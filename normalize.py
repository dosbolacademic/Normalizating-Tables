#!/usr/bin/python
import sys
import psycopg2
import json
from itertools import product
debug=False
checkInput=True

pksuccess=False
_1nfsuccess=False
_2nfsuccess=False
_3nfsuccess=False
bcnfsuccess=False

sqlStr=""
output=""

def syntaxError(sqlStr,output):
    print("Invalid Input")
    output=output+": Invalid Input"+"\n"
    saveOutput(output)
    saveSql(sqlStr)
    quit()
    
def syntaxErrort(t,sqlStr,output):
    print(t+": Invalid Input")
    output=output+t+": Invalid Input"+"\n"
    saveOutput(output)
    saveSql(sqlStr)
    quit()

def saveOutput(txt):
    
    with open('nf.txt', 'a') as fout:
        if fout.tell() == 0:
            fout.write(txt)
        else:
            fout.write("\n")
            fout.write(txt)
    
def saveSql(txt):
    fsql=None
    with open('nf.sql', 'a') as fsql:
        fsql.write(txt)

if debug: print("")
if debug: print ("Arguments Number:", len(sys.argv), " parts.")
if debug: print ("List of Arguments:", str(sys.argv))

if (len(sys.argv)!=2) :
    syntaxError(sqlStr,output)

arg=sys.argv[1]

if debug: print("")
if debug: print ("Argument :", arg)

parts=arg.split(";")

if debug: print ("Argument splited size : ", len(parts), " parts.")
if debug: print ("Argument splited:", str(parts))

if len(parts)!=3:
    syntaxError(sqlStr,output)

tableParts=parts[0].split("=")
pkParts=parts[1].split("=")
columnsParts=parts[2].split("=")



if len(tableParts)!=2 :
    syntaxError(sqlStr,output)
if  len(pkParts)!=2  or len(columnsParts)!=2 :
    syntaxErrort(tableParts[1],sqlStr,output)
if len(tableParts[1])==0 or len(pkParts[1])==0 or len(columnsParts[1])==0 :
    syntaxErrort(tableParts[1],sqlStr,output)


table=tableParts[1]
pk=pkParts[1]
pks=pk.split(",")
columns=columnsParts[1]
columnsArr=columns.split(",")


def Combinations(A, n, retArr, temp=(), i=0):
    if n == 0:
        retArr.add(temp)
        return
    for j in range(i, len(A)):
        Combinations(A, n - 1, retArr, temp + (A[j],), j + 1)

columnsCombined = set()      
Combinations(columnsArr,2, columnsCombined)

pkcolumnsCombined = list(product(pks, columnsArr))


if len(pks)>2 :
    syntaxErrort(table,sqlStr,output)

if debug: print("")
if debug: print ("table   :", table)
if debug: print ("pk      :", pk," => ",pks)
if debug: print ("columns :", columns," => ",columnsArr)
if(debug):print("Columns Combined :",str(columnsCombined))
if(debug):print("Pk,Columns Combined :",str(pkcolumnsCombined))
if debug: print("")



credentials = None
try:
    with open('creds.json') as f:
        credentials = json.load(f)
except OSError:
    print ("Could not open file creds.json")
    quit()
except ValueError:
    print ("parsing json failed")
    quit()

conn = None
try:
    conn = psycopg2.connect(
        dbname=credentials.get('database'),
        host=credentials.get('host'),
        user=credentials.get('user'),
        password=credentials.get('password')
    )
except (Exception, psycopg2.Error) as error:
    print("connection to database failed" , error)
    quit()
print("connection to database : success")    

#Check if Table Exists
if(checkInput):
    try:
        cursor = conn.cursor()
        query = "SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = '"+table+"'"
        sqlStr=sqlStr+query+"\n\n";
        if debug: print("")
        if debug: print("Check if Table Exists")
        if debug: print("")

        cursor.execute(query)
        records = cursor.fetchall()
        if len(records)==0:
            print("")
            print("Table ",table+" does not exists in database")
            print("")
            cursor.close()
            conn.close()
            quit()
        cursor.close()

    except (Exception, psycopg2.Error) as error:
        print("Error while Testing Table exits or not ", error)
        cursor.close()
        conn.close()
        quit()

    if(debug):print("")
    if(debug):print("Table "+table+" exists in database")
    if(debug):print("")

    #Check if Column Exists
    errors=[]
    allColumns=pks+columnsArr
    for c in allColumns:
        try:
            cursor = conn.cursor()
            query = "SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = '"+table+"'and column_name='"+c+"';"
            sqlStr=sqlStr+query+"\n\n";
            cursor.execute(query)
            records = cursor.fetchall()
            if len(records)==0:
                errors.append("column "+c+" does not exist")
            else:
                if(debug):print("column "+c+" exists")
            cursor.close()
        except (Exception, psycopg2.Error) as error:
            print("Error while Testing Column exits or not ", error)
            cursor.close()
            conn.close()
            quit()
        
        
    for  l in errors:
        print(l)

    if(len(errors)>0):
        cursor.close()
        conn.close()
        quit()

    if(debug):print("")



if debug: print("")
if debug: print("Check Empty and single row table")
if debug: print("")
#test Empty and single row table
try:
    cursor = conn.cursor()
    
    query = "select * from "+table
    sqlStr=sqlStr+query+"\n\n";
    if debug: print("")
    if debug: print("Check if PK Valid")
    if debug: print("")

    cursor.execute(query)
    records = cursor.fetchall()
    if len(records)==0:
        print(table+": Empty Table")
        output=output+table+": Empty Table"+"\n"
        cursor.close()
        conn.close()
        saveOutput(output)
        saveSql(sqlStr)
        quit()
    elif len(records)==1:
        print(table+": Single Row Table")
        output=output+table+": Single Row Table"+"\n"
        saveOutput(output)
        saveSql(sqlStr)
        cursor.close()
        conn.close()
        quit()
except (Exception, psycopg2.Error) as error:
    print("Error while Testing if empty or single row", error)
    cursor.close()
    conn.close()
    quit()
print(table)
output=output+table+"\n"
#test Primary Keys
try:
    cursor = conn.cursor()
    
    query = "select * from (SELECT "+pk+",count(*) as cnt FROM "+table+" group by "+pk+") t1 where t1.cnt>1"
    sqlStr=sqlStr+query+"\n\n";
    if debug: print("")
    if debug: print("Check if PK Valid")
    if debug: print("")

    cursor.execute(query)
    records = cursor.fetchall()
    if len(records)==0:
        print("pk Y")
        output=output+"pk Y"+"\n"
        pksuccess=True
    else:
        print("pk N")
        output=output+"pk N"+"\n"
        pksuccess=False
        cursor.close()        
except (Exception, psycopg2.Error) as error:
    print("Error while Testing if PK is valid", error)
    cursor.close()
    conn.close()
    quit()



if(debug):print("")

#test 1NF
try:
    cursor = conn.cursor()
    
    query = "select * from (SELECT "+pk+","+columns+",count(*) as cnt FROM "+table+" group by "+pk+","+columns+") t1 where t1.cnt>1"
    sqlStr=sqlStr+query+"\n\n";
    if debug: print("")
    if debug: print("Check 1NF")
    if debug: print("")

    cursor.execute(query)
    records = cursor.fetchall()
    if len(records)==0 :
        print("1nf Y")
        output=output+"1nf Y"+"\n"
        _1nfsuccess=True
    else:
        print("1nf N")
        output=output+"1nf N"+"\n"
        _1nfsuccess=False
    cursor.close()        
except (Exception, psycopg2.Error) as error:
    print("Error while Testing if PK is valid", error)
    cursor.close()
    conn.close()
    quit()
   
failedpk1=0
failedpk2=0

if(debug):print("")
#test 2NF
if (len(pks)>=1 and _1nfsuccess and pksuccess):
    try:
        for c in columnsArr:
            cursor = conn.cursor()
            
            
            if debug: print("Check if 2NF : "+pks[0]+" column "+c)
            

            query = "select * from (SELECT "+pks[0]+",count(Distinct "+c+") as cnt FROM "+table+" group by "+pks[0]+") t1 where t1.cnt>1"
            sqlStr=sqlStr+query+"\n\n";
            if debug: print(query)

            cursor.execute(query)
            records = cursor.fetchall()
            if len(records)>0:
                if(debug):print("result : True")
            else:
                failedpk1=failedpk1+1
                if(debug):print("result : False")
            cursor.close()

    except (Exception, psycopg2.Error) as error:
        print("Error while Testing if 2NF is valid", error)
        cursor.close()
        conn.close()
        quit()

if (len(pks)>=2 and _1nfsuccess and pksuccess):
    try:
        for c in columnsArr:
            cursor = conn.cursor()
            
            
            if debug: print("Check if 2NF : "+pks[1]+" column "+c)
            

            query = "select * from (SELECT "+pks[1]+",count(Distinct "+c+") as cnt FROM "+table+" group by "+pks[1]+") t1 where t1.cnt>1"
            sqlStr=sqlStr+query+"\n\n";
            if debug: print(query)

            cursor.execute(query)
            records = cursor.fetchall()
            if len(records)>0:
                if(debug):print("result : True")
            else: 
                if(debug):print("result : False")
                failedpk2=failedpk2+1
            cursor.close()

    except (Exception, psycopg2.Error) as error:
        print("Error while Testing if 2NF is valid", error)
        cursor.close()
        conn.close()
        quit()

if pksuccess:
    if len(pks)>=2 : 
        if (failedpk1==0 and failedpk2==0) and _1nfsuccess :
            print("2nf Y")
            output=output+"2nf Y"+"\n"
            _2nfsuccess=True
        else:
            print("2nf N")
            output=output+"2nf N"+"\n"
            _2nfsuccess=False
    else:     
            print("2nf Y")
            output=output+"2nf Y"+"\n"
            _2nfsuccess=True
else:            
    print("2nf N")
    output=output+"2nf N"+"\n"
    _2nfsuccess=False

failedc=0

if(debug):print("")
#test 3NF
if (_1nfsuccess and _2nfsuccess):
    try:
        for c in columnsCombined:
            cursor = conn.cursor()
            
            
            if debug: print("Check if 3NF : "+c[0]+" => "+c[1])
            

            query = "select * from (SELECT "+c[0]+",count(Distinct "+c[1]+") as cnt FROM "+table+" group by "+c[0]+") t1 where t1.cnt>1"
            sqlStr=sqlStr+query+"\n\n";
            

            cursor.execute(query)
            records = cursor.fetchall()
            if len(records)>0:
                if(debug):print("result : True")
            else: 
                failedc=failedc+1;
                if(debug):print("result : False")
            cursor.close()



            cursor = conn.cursor()
            
            if debug: print("Check if 3NF : "+c[1]+" => "+c[0])
            

            query = "select * from (SELECT "+c[1]+",count(Distinct "+c[0]+") as cnt FROM "+table+" group by "+c[1]+") t1 where t1.cnt>1"
            sqlStr=sqlStr+query+"\n\n";

            cursor.execute(query)
            records = cursor.fetchall()
            if len(records)>0:
                if(debug):print("result : True")
            else: 
                failedc=failedc+1;
                if(debug):print("result : False")
            cursor.close()
    except (Exception, psycopg2.Error) as error:
        print("Error while Testing if 3NF is valid", error)
        cursor.close()
        conn.close()
        quit()


if failedc==0 and _1nfsuccess and _2nfsuccess:
    print("3nf Y")
    output=output+"3nf Y"+"\n"
    _3nfsuccess=True
else:
    print("3nf N")
    output=output+"3nf N"+"\n"
    _3nfsuccess=False


failedc=0

if(debug):print("")
#test bcnf
if (_1nfsuccess and _2nfsuccess and _3nfsuccess):
    try:
        for c in pkcolumnsCombined:
            cursor = conn.cursor()
            
            
            if debug: print("Check if BCNF : "+c[1]+" => "+c[0])
            

            query = "select * from (SELECT "+c[1]+",count(Distinct "+c[0]+") as cnt FROM "+table+" group by "+c[1]+") t1 where t1.cnt>1"
            sqlStr=sqlStr+query+"\n\n";

            cursor.execute(query)
            records = cursor.fetchall()
            if len(records)>0:
                if(debug):print("result : True")
            else: 
                failedc=failedc+1;
                if(debug):print("result : False")
            cursor.close()

    except (Exception, psycopg2.Error) as error:
        print("Error while Testing if BCNF is valid", error)
        cursor.close()
        conn.close()
        quit()


if failedc==0 and _1nfsuccess and _2nfsuccess and _3nfsuccess:
    print("bcnf Y")
    output=output+"bcnf Y"+"\n"
    bcnfsuccess=True
else:
    print("bcnf N")
    output=output+"bcnf N"+"\n"
    bcnfsuccess=False



if conn:
    conn.close()
    if(debug):print("Connection to database is closed")
print("")


#write Files

saveOutput(output)
saveSql(sqlStr)

