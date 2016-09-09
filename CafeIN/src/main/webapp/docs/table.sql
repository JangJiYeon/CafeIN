create table u_user (
  u_uid varchar2(20) not null primary key,
  u_email varchar2(50) not null,
  u_name varchar2(15) not null,
  u_password varchar2(15) not null,
  u_reg_date date not null,
  u_level number default 0
);

create sequence u_user_seq;