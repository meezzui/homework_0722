SHOW DATABASES; -- 데이터베이스 목록보기
CREATE DATABASE jcp; -- 데이터베이스 생성
USE jcp; -- 데이터베이스 사용
DROP DATABASE jcp; -- 데이터베이스 삭제

select * from tb_member;

delete from tb_member;

delete from tb_profile;

-- 데이블 만들기
CREATE TABLE tb_member (
	mem_idx bigint auto_increment primary key,
	mem_userid varchar(20) unique not null,
	mem_userpw varchar(20) not null,
	mem_name varchar(20) not null,
	mem_hp varchar(20) not null,
	mem_email varchar(50) not null,
	mem_hobby varchar(100),
	mem_ssn1 char(6) not null,
	mem_ssn2 char(7) not null,
	mem_zipcode char(5),
	mem_address1 varchar(100),
	mem_address2 varchar(100),
	mem_address3 varchar(100),
	mem_regdate datetime default now()
);

-- 테이블 구조 확인 
DESC tb_member;
-- 테이블 삭제
DROP TABLE tb_member;

-- 프로필 테이블 만들기
CREATE TABLE tb_profile(

pro_useridx bigint,
pro_age int,
pro_gender enum('남자','여자'),
pro_height double,
pro_weight double,
foreign key(pro_useridx) references tb_member(mem_idx)

);
desc tb_profile;

-- 테이블에 필드를 추가
ALTER TABLE tb_member ADD mem_point INT DEFAULT 0;
 desc tb_member;

-- 테이블 필드 수정
ALTER TABLE tb_member MODIFY COLUMN mem_point DOUBLE DEFAULT 0;
desc tb_member;

-- 테이블 필드 삭제
alter table tb_member drop mem_point;
desc tb_member;

-- 데이터 삽입
INSERT INTO tb_member (mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3) VALUES ('apple', '1111', '김사과', '010-1111-1111', 'apple@apple.com', '드라이브', '001011', '4068512', '12345', '서울 서초구 양재동', '11-11', '11111');
SELECT * FROM tb_member;

insert into tb_member(mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3)values
('banana','2222','반하나','010-2222-2222','banana@banana.com','영화보기','001012','4039211','23456','경기도 하남시 하남동','11-22','22222');
select * from tb_member;

insert into tb_member(mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3)values
('orange','3333','오렌지','010-3333-3333','orange@orange.com','잠자기','001013','4560933','34567','경기도 군포시 산본동','11-33','33333');
select * from tb_member;

insert into tb_member(mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3)values
('carrot','4444','당근','010-4444-4444','carrot@carrot.com','예능보기','001014','2918000','45678','경기도 평택시 평택동','11-44','44444');
select * from tb_member;

insert into tb_member(mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3)values
('strawberry','5555','딸기','010-5555-5555','strawberry@strawberry.com','딸기먹기','001015','4039222','56789','경기도 안양시 안양동','11-55','55555');
select * from tb_member;

insert into tb_member(mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3)values
('shirmp','6666','새우','010-6666-6666','shrimp@shrimp.com','새우먹기','001016','4039667','12121','경기도 하남시 구래동','11-66','66666');
select * from tb_member;

insert into tb_member(mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3)values
('ramon','7777','라면','010-7777-7777','ramon@ramon.com','라면먹기','001017','2323232','12345','경기도 안양시 비림동','11-77','77777');
select * from tb_member;

insert into tb_member(mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3)values
('lemon','8888','레몬','010-8888-8888','lemon@lemon.com','레몬먹기','001018','4545454','09877','경기도 수원시 팔달동','11-88','88888');
select * from tb_member;

insert into tb_member(mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3)values
('laim','9999','라임','010-9999-9999','laim@laim.com','라임먹기','001019','4030987','67874','경기도 수원시 수원동','11-99','99999');
select * from tb_member;

insert into tb_member(mem_userid, mem_userpw, mem_name, mem_hp, mem_email, mem_hobby, mem_ssn1, mem_ssn2, mem_zipcode, mem_address1, mem_address2, mem_address3)values
('melon','1010','멜론','010-1010-1010','melon@melon.com','메론먹기','001010','4234567','45456','경기도 하남시 하륜동','11-10','10101');
select * from tb_member;


-- 데이터 수정
update tb_member set mem_point =500;
select * from tb_member;
update tb_member set mem_point = mem_point + 200 where mem_idx = 11;
update tb_member set mem_point = mem_point + 300 where mem_idx = 13;
update tb_member set mem_point = mem_point - 100 where mem_idx = 15;
update tb_member set mem_point = mem_point - 200 where mem_idx = 17;
update tb_member set mem_point = mem_point + 400 where mem_idx = 19;
select * from tb_member;


-- 한꺼번에 변경
update tb_member set mem_point = mem_point + 100 where mem_idx in(12,14,16);
select * from tb_member;

-- 특정한 거 바꾸는 것 (프라이머리키로 지정된 것으로 지정해주기)
update tb_member set mem_point = mem_point + 200 where mem_userid='lemon';
select * from tb_member;
-- 데이터 삭제
delete from tb_member;
delete from tb_member where mem_idx='16';

-- 단어장
CREATE TABLE tb_word(
number BIGINT AUTO_INCREMENT PRIMARY KEY,
eng_word VARCHAR(30) NOT NULL,
kor_word VARCHAR(30) NOT NULL,
word_level INT NOT NULL,
w_datetime datetime default now()
);
DESC tb_word; 

-- 검색(내가 써준 순서대로 출력됨)
SELECT mem_idx, mem_userid, mem_name From tb_member;
select mem_name, mem_userid from tb_member;
-- 모든 컬럼을 다 보여줌
select * from tb_member;

-- 조건을 붙여서 해당 인덱스 검색
SELECT mem_idx, mem_userid, mem_name From tb_member where mem_idx=12;

-- 로그인 
select mem_idx from tb_member where mem_userid='apple' and mem_userpw ='1111'; -- 아이디:apple 비밀번호:1111 이것을 동시에 만족하면 출력이 되고 그러면 

select * from tb_member where mem_point >=500; -- 포인트가 500이상인 사람들 검색
select * from tb_member where mem_point between 300 and 700;

update tb_member set mem_zipcode = null, mem_address1=null, mem_address2=null, mem_address3= null where mem_idx =13;
select * from tb_member where mem_zipcode is null;
select * from tb_member where mem_zipcode is not null;

select * from tb_member order by mem_idx asc; 
select*from tb_member order by mem_idx desc; 
-- 2차 정렬 
select*from tb_member order by mem_point desc, mem_idx desc;

 -- 테이블에 필드를 추가
ALTER TABLE tb_member ADD mem_gender enum('남자','여자');
select * from tb_member;

select mem_gender,count(mem_idx) from tb_member group by mem_gender;-- 성별 그룹이 몇명인지 세어줌 
select mem_gender, count(mem_idx), sum(mem_point),max(mem_point),min(mem_point) from tb_member group by mem_gender;
select mem_gender,count(mem_idx) as '명' from tb_member group by mem_gender;
select mem_gender, count(mem_idx) as cnt, sum(mem_point)as sum,max(mem_point)as max,min(mem_point) as min from tb_member group by mem_gender;

-- 테이블 필드 삭제
alter table tb_member drop mem_gender;
desc tb_member;
select * from tb_member;

-- 프로필 테이블 채우기
select * from tb_profile;
select * from tb_member;
insert into tb_profile values(11,20,'여자','160','40');
insert into tb_profile values(12,21,'남자','165','41');
insert into tb_profile values(13,22,'남자','170','42');
insert into tb_profile values(14,23,'여자','175','43');
insert into tb_profile values(15,24,'여자','180','44');
insert into tb_profile values(17,25,'남자','185','45');
insert into tb_profile values(18,26,'남자','190','46');

SELECT mem_idx, mem_userid, mem_name, pro_gender, pro_height, pro_weight FROM tb_member INNER JOIN tb_profile ON tb_member.mem_idx = tb_profile.pro_useridx;
 -- left는 왼쪽기준(왼쪽에 있는 tb_member가 기준이 된다. 그래서 tb_member에 들어있는 데이터 양에 맞춰서 데이터가 11~20까지 전부 출력된다.)
 SELECT mem_idx, mem_userid, mem_name, pro_gender, pro_height, pro_weight FROM tb_member left JOIN tb_profile ON tb_member.mem_idx = tb_profile.pro_useridx;
 -- right은 오른쪽기준(오른쪽에 있는 tb_profile가 기준이 된다. tb_profile안에 저장된 데이터는 8개 이므로 데이터가 11~18까지만 출력되고 나머지는 null값이 출력된다.)
 SELECT mem_idx, mem_userid, mem_name, pro_gender, pro_height, pro_weight FROM tb_member right JOIN tb_profile ON tb_member.mem_idx = tb_profile.pro_useridx;
 
 
 
 
 
 
 
 
 