delete from message;

insert into message (id, filename, tag, text, user_id)
values (1, '', 'message', 'Hello word, it is a new message about this page', 1),
 (2, '', 'Don`t look', 'Follow the our registration', 1),
 (3, '', 'message', 'Stop! please help them', 2),
 (4, '', 'About page', 'My name is Miho and this is my ...', 1);

alter sequence hibernate_sequence restart 10;