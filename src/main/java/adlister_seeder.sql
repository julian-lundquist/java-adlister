use adlister_db

insert into users (username, email, pass) values ('admin', 'admin@admin.com', 'admin');

insert into ads (user_id, title, description) VALUES
                                                     (1, 'cool thing', 'get it done'),
                                                     (1, 'another 1', 'need help');