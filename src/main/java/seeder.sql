USE ad_lister;

Insert INTO users (username, email, password)
VALUES ('dsolis', 'damianrsols@gmail.com', 'letmein');

DROP table ads;


INSERT INTO ads (user_id, title, description) Values
(1, 'Test Ad 1', 'This is a description of test ad 1.'),
(1, 'Test Ad 2', 'This is a description of test ad 2.'),
(1, 'Test Ad 3', 'This is a description of test ad 3.'),
(1, 'Test Ad 4', 'This is a description of test ad 4.');

