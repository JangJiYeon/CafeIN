create table u_user (
  u_uid varchar2(20) not null primary key,
  u_email varchar2(50) not null,
  u_name varchar2(15) not null,
  u_password varchar2(15) not null,
  u_reg_date date not null,
  u_level number default 0
);

create sequence user_seq;

------------------------------------

INSERT INTO u_user VALUES('1','aaa@test.com','에이','12345','2016-09-01','');
INSERT INTO u_user VALUES('2','bbb@test.com','비','56789','2016-08-01','1');
INSERT INTO u_user VALUES('3','ccc@test.com','씨','55555','2016-08-31','1');
INSERT INTO u_user VALUES('4','ddd@test.com','디','33333','2016-08-21','');
INSERT INTO u_user VALUES('5','eee@test.com','이','11111','2016-09-01','');

INSERT INTO u_user VALUES('6','fff@test.com','fff','12345','2016-09-08','2');
INSERT INTO u_user VALUES('7','ggg@test.com','ghg','56789','2016-08-25','1');
INSERT INTO u_user VALUES('8','hhh@test.com','hhh','55555','2016-08-31','');
INSERT INTO u_user VALUES('9','iii@test.com','iii','33333','2016-09-04','2');
INSERT INTO u_user VALUES('10','jjj@test.com','jjj','11111','2016-09-01','2');

commit;ㄴ