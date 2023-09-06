DROP Database if exists adlister_db;

CREATE database adlister_db;

Use adlister_db;

Create Table users (
    id       INT UNSIGNED NOT NULL auto_increment,
    username VARCHAR(100) NOT NULL,
    email    VARCHAR(255) NOT NULL,
    password VARCHAR(100)  not null,
    PRIMARY KEY (id)
);


Create Table ads (
    id INT UNSIGNED NOT NULL auto_increment,
    user_id Int UNSIGNED NOT NULL,
    title   VARCHAR(255) NOT NULL,
    description TEXT  not null,
    FOREIGN KEY (user_id) References users (id),
    PRIMARY KEY (id)
);