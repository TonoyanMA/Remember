insert into usr (id, email, username, password, active)
values (1, 'tom@gamil.com', 'admin', 123, true);

insert into user_role (user_id, roles)
values (1, 'USER'), (1, 'ADMIN');