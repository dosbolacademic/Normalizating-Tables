SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_invalidpkk1k2'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_invalidpkk1k2'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_invalidpkk1k2'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_invalidpkk1k2'and column_name='a';

select * from hw2_1nf_invalidpkk1k2

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_1nf_invalidpkk1k2 group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,count(*) as cnt FROM hw2_1nf_invalidpkk1k2 group by k1,k2,a) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct a) as cnt FROM hw2_1nf_invalidpkk1k2 group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct a) as cnt FROM hw2_1nf_invalidpkk1k2 group by k2) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_difficult'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_difficult'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_difficult'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_difficult'and column_name='a';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_difficult'and column_name='b';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_difficult'and column_name='c';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_difficult'and column_name='d';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_difficult'and column_name='e';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_1nf_difficult'and column_name='f';

select * from hw2_1nf_difficult

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_1nf_difficult group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,b,c,d,e,f,count(*) as cnt FROM hw2_1nf_difficult group by k1,k2,a,b,c,d,e,f) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct a) as cnt FROM hw2_1nf_difficult group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct b) as cnt FROM hw2_1nf_difficult group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct c) as cnt FROM hw2_1nf_difficult group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct d) as cnt FROM hw2_1nf_difficult group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct e) as cnt FROM hw2_1nf_difficult group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct f) as cnt FROM hw2_1nf_difficult group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct a) as cnt FROM hw2_1nf_difficult group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct b) as cnt FROM hw2_1nf_difficult group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct c) as cnt FROM hw2_1nf_difficult group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct d) as cnt FROM hw2_1nf_difficult group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct e) as cnt FROM hw2_1nf_difficult group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct f) as cnt FROM hw2_1nf_difficult group by k2) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_2nf_not3nf'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_2nf_not3nf'and column_name='k';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_2nf_not3nf'and column_name='a';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_2nf_not3nf'and column_name='b';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_2nf_not3nf'and column_name='c';

select * from hw2_2nf_not3nf

select * from (SELECT k,count(*) as cnt FROM hw2_2nf_not3nf group by k) t1 where t1.cnt>1

select * from (SELECT k,a,b,c,count(*) as cnt FROM hw2_2nf_not3nf group by k,a,b,c) t1 where t1.cnt>1

select * from (SELECT k,count(Distinct a) as cnt FROM hw2_2nf_not3nf group by k) t1 where t1.cnt>1

select * from (SELECT k,count(Distinct b) as cnt FROM hw2_2nf_not3nf group by k) t1 where t1.cnt>1

select * from (SELECT k,count(Distinct c) as cnt FROM hw2_2nf_not3nf group by k) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct b) as cnt FROM hw2_2nf_not3nf group by a) t1 where t1.cnt>1

select * from (SELECT b,count(Distinct a) as cnt FROM hw2_2nf_not3nf group by b) t1 where t1.cnt>1

select * from (SELECT b,count(Distinct c) as cnt FROM hw2_2nf_not3nf group by b) t1 where t1.cnt>1

select * from (SELECT c,count(Distinct b) as cnt FROM hw2_2nf_not3nf group by c) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct c) as cnt FROM hw2_2nf_not3nf group by a) t1 where t1.cnt>1

select * from (SELECT c,count(Distinct a) as cnt FROM hw2_2nf_not3nf group by c) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_3nf_notbcnf'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_3nf_notbcnf'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_3nf_notbcnf'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_3nf_notbcnf'and column_name='a';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_3nf_notbcnf'and column_name='b';

select * from hw2_3nf_notbcnf

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_3nf_notbcnf group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,b,count(*) as cnt FROM hw2_3nf_notbcnf group by k1,k2,a,b) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct a) as cnt FROM hw2_3nf_notbcnf group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct b) as cnt FROM hw2_3nf_notbcnf group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct a) as cnt FROM hw2_3nf_notbcnf group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct b) as cnt FROM hw2_3nf_notbcnf group by k2) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct b) as cnt FROM hw2_3nf_notbcnf group by a) t1 where t1.cnt>1

select * from (SELECT b,count(Distinct a) as cnt FROM hw2_3nf_notbcnf group by b) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct k1) as cnt FROM hw2_3nf_notbcnf group by a) t1 where t1.cnt>1

select * from (SELECT b,count(Distinct k1) as cnt FROM hw2_3nf_notbcnf group by b) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct k2) as cnt FROM hw2_3nf_notbcnf group by a) t1 where t1.cnt>1

select * from (SELECT b,count(Distinct k2) as cnt FROM hw2_3nf_notbcnf group by b) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_3nf_notbcnf_2'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_3nf_notbcnf_2'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_3nf_notbcnf_2'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_3nf_notbcnf_2'and column_name='a';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_3nf_notbcnf_2'and column_name='b';

select * from hw2_3nf_notbcnf_2

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_3nf_notbcnf_2 group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,b,count(*) as cnt FROM hw2_3nf_notbcnf_2 group by k1,k2,a,b) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct a) as cnt FROM hw2_3nf_notbcnf_2 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct b) as cnt FROM hw2_3nf_notbcnf_2 group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct a) as cnt FROM hw2_3nf_notbcnf_2 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct b) as cnt FROM hw2_3nf_notbcnf_2 group by k2) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct b) as cnt FROM hw2_3nf_notbcnf_2 group by a) t1 where t1.cnt>1

select * from (SELECT b,count(Distinct a) as cnt FROM hw2_3nf_notbcnf_2 group by b) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct k1) as cnt FROM hw2_3nf_notbcnf_2 group by a) t1 where t1.cnt>1

select * from (SELECT b,count(Distinct k1) as cnt FROM hw2_3nf_notbcnf_2 group by b) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct k2) as cnt FROM hw2_3nf_notbcnf_2 group by a) t1 where t1.cnt>1

select * from (SELECT b,count(Distinct k2) as cnt FROM hw2_3nf_notbcnf_2 group by b) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_bcnf'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_bcnf'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_bcnf'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_bcnf'and column_name='a';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_bcnf'and column_name='b';

select * from hw2_bcnf

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_bcnf group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,b,count(*) as cnt FROM hw2_bcnf group by k1,k2,a,b) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct a) as cnt FROM hw2_bcnf group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct b) as cnt FROM hw2_bcnf group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct a) as cnt FROM hw2_bcnf group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct b) as cnt FROM hw2_bcnf group by k2) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct b) as cnt FROM hw2_bcnf group by a) t1 where t1.cnt>1

select * from (SELECT b,count(Distinct a) as cnt FROM hw2_bcnf group by b) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct k1) as cnt FROM hw2_bcnf group by a) t1 where t1.cnt>1

select * from (SELECT b,count(Distinct k1) as cnt FROM hw2_bcnf group by b) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct k2) as cnt FROM hw2_bcnf group by a) t1 where t1.cnt>1

select * from (SELECT b,count(Distinct k2) as cnt FROM hw2_bcnf group by b) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_bcnf_2'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_bcnf_2'and column_name='id1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_bcnf_2'and column_name='id2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_bcnf_2'and column_name='col1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_bcnf_2'and column_name='col2';

select * from hw2_bcnf_2

select * from (SELECT id1,id2,count(*) as cnt FROM hw2_bcnf_2 group by id1,id2) t1 where t1.cnt>1

select * from (SELECT id1,id2,col1,col2,count(*) as cnt FROM hw2_bcnf_2 group by id1,id2,col1,col2) t1 where t1.cnt>1

select * from (SELECT id1,count(Distinct col1) as cnt FROM hw2_bcnf_2 group by id1) t1 where t1.cnt>1

select * from (SELECT id1,count(Distinct col2) as cnt FROM hw2_bcnf_2 group by id1) t1 where t1.cnt>1

select * from (SELECT id2,count(Distinct col1) as cnt FROM hw2_bcnf_2 group by id2) t1 where t1.cnt>1

select * from (SELECT id2,count(Distinct col2) as cnt FROM hw2_bcnf_2 group by id2) t1 where t1.cnt>1

select * from (SELECT col1,count(Distinct col2) as cnt FROM hw2_bcnf_2 group by col1) t1 where t1.cnt>1

select * from (SELECT col2,count(Distinct col1) as cnt FROM hw2_bcnf_2 group by col2) t1 where t1.cnt>1

select * from (SELECT col1,count(Distinct id1) as cnt FROM hw2_bcnf_2 group by col1) t1 where t1.cnt>1

select * from (SELECT col2,count(Distinct id1) as cnt FROM hw2_bcnf_2 group by col2) t1 where t1.cnt>1

select * from (SELECT col1,count(Distinct id2) as cnt FROM hw2_bcnf_2 group by col1) t1 where t1.cnt>1

select * from (SELECT col2,count(Distinct id2) as cnt FROM hw2_bcnf_2 group by col2) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_compositepk'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_compositepk'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_compositepk'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_compositepk'and column_name='c';

select * from hw2_compositepk

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_compositepk group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,c,count(*) as cnt FROM hw2_compositepk group by k1,k2,c) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct c) as cnt FROM hw2_compositepk group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct c) as cnt FROM hw2_compositepk group by k2) t1 where t1.cnt>1

select * from (SELECT c,count(Distinct k1) as cnt FROM hw2_compositepk group by c) t1 where t1.cnt>1

select * from (SELECT c,count(Distinct k2) as cnt FROM hw2_compositepk group by c) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_compositepk_2'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_compositepk_2'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_compositepk_2'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_compositepk_2'and column_name='a';

select * from hw2_compositepk_2

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_compositepk_2 group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,count(*) as cnt FROM hw2_compositepk_2 group by k1,k2,a) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct a) as cnt FROM hw2_compositepk_2 group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct a) as cnt FROM hw2_compositepk_2 group by k2) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct k1) as cnt FROM hw2_compositepk_2 group by a) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct k2) as cnt FROM hw2_compositepk_2 group by a) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_easy_strings'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_easy_strings'and column_name='k';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_easy_strings'and column_name='a';

select * from hw2_easy_strings

select * from (SELECT k,count(*) as cnt FROM hw2_easy_strings group by k) t1 where t1.cnt>1

select * from (SELECT k,a,count(*) as cnt FROM hw2_easy_strings group by k,a) t1 where t1.cnt>1

select * from (SELECT k,count(Distinct a) as cnt FROM hw2_easy_strings group by k) t1 where t1.cnt>1

select * from (SELECT a,count(Distinct k) as cnt FROM hw2_easy_strings group by a) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_empty'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_empty'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_empty'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_empty'and column_name='a';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_empty'and column_name='b';

select * from hw2_empty

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_invalidpkk_not1nf'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_invalidpkk_not1nf'and column_name='k';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_invalidpkk_not1nf'and column_name='a';

select * from hw2_invalidpkk_not1nf

select * from (SELECT k,count(*) as cnt FROM hw2_invalidpkk_not1nf group by k) t1 where t1.cnt>1

select * from (SELECT k,a,count(*) as cnt FROM hw2_invalidpkk_not1nf group by k,a) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_large_1'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_1'and column_name='id';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_1'and column_name='val1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_1'and column_name='val2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_1'and column_name='val3';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_1'and column_name='val4';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_1'and column_name='val5';

select * from hw2_large_1

select * from (SELECT id,count(*) as cnt FROM hw2_large_1 group by id) t1 where t1.cnt>1

select * from (SELECT id,val1,val2,val3,val4,val5,count(*) as cnt FROM hw2_large_1 group by id,val1,val2,val3,val4,val5) t1 where t1.cnt>1

select * from (SELECT id,count(Distinct val1) as cnt FROM hw2_large_1 group by id) t1 where t1.cnt>1

select * from (SELECT id,count(Distinct val2) as cnt FROM hw2_large_1 group by id) t1 where t1.cnt>1

select * from (SELECT id,count(Distinct val3) as cnt FROM hw2_large_1 group by id) t1 where t1.cnt>1

select * from (SELECT id,count(Distinct val4) as cnt FROM hw2_large_1 group by id) t1 where t1.cnt>1

select * from (SELECT id,count(Distinct val5) as cnt FROM hw2_large_1 group by id) t1 where t1.cnt>1

select * from (SELECT val4,count(Distinct val5) as cnt FROM hw2_large_1 group by val4) t1 where t1.cnt>1

select * from (SELECT val5,count(Distinct val4) as cnt FROM hw2_large_1 group by val5) t1 where t1.cnt>1

select * from (SELECT val1,count(Distinct val5) as cnt FROM hw2_large_1 group by val1) t1 where t1.cnt>1

select * from (SELECT val5,count(Distinct val1) as cnt FROM hw2_large_1 group by val5) t1 where t1.cnt>1

select * from (SELECT val2,count(Distinct val5) as cnt FROM hw2_large_1 group by val2) t1 where t1.cnt>1

select * from (SELECT val5,count(Distinct val2) as cnt FROM hw2_large_1 group by val5) t1 where t1.cnt>1

select * from (SELECT val1,count(Distinct val2) as cnt FROM hw2_large_1 group by val1) t1 where t1.cnt>1

select * from (SELECT val2,count(Distinct val1) as cnt FROM hw2_large_1 group by val2) t1 where t1.cnt>1

select * from (SELECT val2,count(Distinct val3) as cnt FROM hw2_large_1 group by val2) t1 where t1.cnt>1

select * from (SELECT val3,count(Distinct val2) as cnt FROM hw2_large_1 group by val3) t1 where t1.cnt>1

select * from (SELECT val1,count(Distinct val3) as cnt FROM hw2_large_1 group by val1) t1 where t1.cnt>1

select * from (SELECT val3,count(Distinct val1) as cnt FROM hw2_large_1 group by val3) t1 where t1.cnt>1

select * from (SELECT val3,count(Distinct val4) as cnt FROM hw2_large_1 group by val3) t1 where t1.cnt>1

select * from (SELECT val4,count(Distinct val3) as cnt FROM hw2_large_1 group by val4) t1 where t1.cnt>1

select * from (SELECT val3,count(Distinct val5) as cnt FROM hw2_large_1 group by val3) t1 where t1.cnt>1

select * from (SELECT val5,count(Distinct val3) as cnt FROM hw2_large_1 group by val5) t1 where t1.cnt>1

select * from (SELECT val1,count(Distinct val4) as cnt FROM hw2_large_1 group by val1) t1 where t1.cnt>1

select * from (SELECT val4,count(Distinct val1) as cnt FROM hw2_large_1 group by val4) t1 where t1.cnt>1

select * from (SELECT val2,count(Distinct val4) as cnt FROM hw2_large_1 group by val2) t1 where t1.cnt>1

select * from (SELECT val4,count(Distinct val2) as cnt FROM hw2_large_1 group by val4) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_large_2'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_2'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_2'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_2'and column_name='a';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_2'and column_name='b';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_2'and column_name='c';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_2'and column_name='d';

select * from hw2_large_2

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_large_2 group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,b,c,d,count(*) as cnt FROM hw2_large_2 group by k1,k2,a,b,c,d) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct a) as cnt FROM hw2_large_2 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct b) as cnt FROM hw2_large_2 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct c) as cnt FROM hw2_large_2 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct d) as cnt FROM hw2_large_2 group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct a) as cnt FROM hw2_large_2 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct b) as cnt FROM hw2_large_2 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct c) as cnt FROM hw2_large_2 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct d) as cnt FROM hw2_large_2 group by k2) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'and column_name='a';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'and column_name='b';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'and column_name='c';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'and column_name='d';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'and column_name='e';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'and column_name='f';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'and column_name='g';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'and column_name='h';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'and column_name='l';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_large_3'and column_name='m';

select * from hw2_large_3

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_large_3 group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,b,c,d,e,f,g,h,l,m,count(*) as cnt FROM hw2_large_3 group by k1,k2,a,b,c,d,e,f,g,h,l,m) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct a) as cnt FROM hw2_large_3 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct b) as cnt FROM hw2_large_3 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct c) as cnt FROM hw2_large_3 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct d) as cnt FROM hw2_large_3 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct e) as cnt FROM hw2_large_3 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct f) as cnt FROM hw2_large_3 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct g) as cnt FROM hw2_large_3 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct h) as cnt FROM hw2_large_3 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct l) as cnt FROM hw2_large_3 group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct m) as cnt FROM hw2_large_3 group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct a) as cnt FROM hw2_large_3 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct b) as cnt FROM hw2_large_3 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct c) as cnt FROM hw2_large_3 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct d) as cnt FROM hw2_large_3 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct e) as cnt FROM hw2_large_3 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct f) as cnt FROM hw2_large_3 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct g) as cnt FROM hw2_large_3 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct h) as cnt FROM hw2_large_3 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct l) as cnt FROM hw2_large_3 group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct m) as cnt FROM hw2_large_3 group by k2) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf'and column_name='a';

select * from hw2_not2nf

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_not2nf group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,count(*) as cnt FROM hw2_not2nf group by k1,k2,a) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct a) as cnt FROM hw2_not2nf group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct a) as cnt FROM hw2_not2nf group by k2) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf_difficult'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf_difficult'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf_difficult'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf_difficult'and column_name='a';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf_difficult'and column_name='b';

select * from hw2_not2nf_difficult

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_not2nf_difficult group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,b,count(*) as cnt FROM hw2_not2nf_difficult group by k1,k2,a,b) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct a) as cnt FROM hw2_not2nf_difficult group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct b) as cnt FROM hw2_not2nf_difficult group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct a) as cnt FROM hw2_not2nf_difficult group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct b) as cnt FROM hw2_not2nf_difficult group by k2) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf_easy'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf_easy'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf_easy'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_not2nf_easy'and column_name='a';

select * from hw2_not2nf_easy

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_not2nf_easy group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,count(*) as cnt FROM hw2_not2nf_easy group by k1,k2,a) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct a) as cnt FROM hw2_not2nf_easy group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct a) as cnt FROM hw2_not2nf_easy group by k2) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_onerow'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_onerow'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_onerow'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_onerow'and column_name='a';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_onerow'and column_name='b';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_onerow'and column_name='c';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_onerow'and column_name='d';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_onerow'and column_name='e';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_onerow'and column_name='f';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_onerow'and column_name='g';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_onerow'and column_name='h';

select * from hw2_onerow

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_pkbad_3'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_pkbad_3'and column_name='k';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_pkbad_3'and column_name='a';

select * from hw2_pkbad_3

select * from (SELECT k,count(*) as cnt FROM hw2_pkbad_3 group by k) t1 where t1.cnt>1

select * from (SELECT k,a,count(*) as cnt FROM hw2_pkbad_3 group by k,a) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_pkbad_4'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_pkbad_4'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_pkbad_4'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_pkbad_4'and column_name='a';

select * from hw2_pkbad_4

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_pkbad_4 group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,count(*) as cnt FROM hw2_pkbad_4 group by k1,k2,a) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_pkeasy'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_pkeasy'and column_name='k';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_pkeasy'and column_name='ab';

select * from hw2_pkeasy

select * from (SELECT k,count(*) as cnt FROM hw2_pkeasy group by k) t1 where t1.cnt>1

select * from (SELECT k,ab,count(*) as cnt FROM hw2_pkeasy group by k,ab) t1 where t1.cnt>1

select * from (SELECT k,count(Distinct ab) as cnt FROM hw2_pkeasy group by k) t1 where t1.cnt>1

select * from (SELECT ab,count(Distinct k) as cnt FROM hw2_pkeasy group by ab) t1 where t1.cnt>1

SELECT * FROM information_schema.tables WHERE table_schema = 'public' AND    table_name = 'hw2_strings'

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_strings'and column_name='k1';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_strings'and column_name='k2';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_strings'and column_name='a';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_strings'and column_name='b';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_strings'and column_name='c';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_strings'and column_name='d';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_strings'and column_name='e';

SELECT * FROM information_schema.columns WHERE table_schema = 'public' AND    table_name = 'hw2_strings'and column_name='f';

select * from hw2_strings

select * from (SELECT k1,k2,count(*) as cnt FROM hw2_strings group by k1,k2) t1 where t1.cnt>1

select * from (SELECT k1,k2,a,b,c,d,e,f,count(*) as cnt FROM hw2_strings group by k1,k2,a,b,c,d,e,f) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct a) as cnt FROM hw2_strings group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct b) as cnt FROM hw2_strings group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct c) as cnt FROM hw2_strings group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct d) as cnt FROM hw2_strings group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct e) as cnt FROM hw2_strings group by k1) t1 where t1.cnt>1

select * from (SELECT k1,count(Distinct f) as cnt FROM hw2_strings group by k1) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct a) as cnt FROM hw2_strings group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct b) as cnt FROM hw2_strings group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct c) as cnt FROM hw2_strings group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct d) as cnt FROM hw2_strings group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct e) as cnt FROM hw2_strings group by k2) t1 where t1.cnt>1

select * from (SELECT k2,count(Distinct f) as cnt FROM hw2_strings group by k2) t1 where t1.cnt>1

