use hz;

create table if not exists members(
    id varchar(20) primary key,
    passwd varchar(20),
    email varchar(20),
    signuptime timestamp default current_timestamp
);