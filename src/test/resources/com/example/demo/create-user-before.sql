delete
from user_role;
delete
from usr;

insert into usr (id, activation_code, active, email, password, username)
values (1, null, true, '', '$2a$08$3uOsHhyOO5VH8es2OyQzNuylJRgTQdEPvMWP.a4XXt7mqfHcOTtIa', 'admin'),
       (2, null, true, '', '$2a$08$cqVqsP1BASeDJYknPeuSCOYIpnRO9PWKMBXlXZuJNp89OmbYo3oPe', 'user1');
insert into user_role (user_id, roles)
values (1, 'USER'),
       (1, 'ADMIN'),
       (2, 'USER');