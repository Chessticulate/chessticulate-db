
CREATE TABLE users (
    id serial PRIMARY KEY, 
    name varchar(15) UNIQUE NOT NULL,
    password varchar(255) NOT NULL,
    email varchar(255) UNIQUE NOT NULL,
    joined timestamp NOT NULL,
    wins int DEFAULT 0,
    losses int DEFAULT 0,
    draws int DEFAULT 0
);

CREATE TYPE result AS ENUM ('black win', 'white win', 'draw');

CREATE TABLE games (
    id serial PRIMARY KEY,
    started timestamp NOT NULL,
    completed timestamp,
    white_id int NOT NULL,
    black_id int NOT NULL,
    result RESULT
);

CREATE TABLE follows (
    id serial PRIMARY KEY,
    follower_id int NOT NULL,
    followee_id int NOT NULL
);

CREATE TABLE messages (
    id serial PRIMARY KEY,
    sent timestamp NOT NULL,
    from_id int NOT NULL,
    to_id int NOT NULL,
    message varchar(255) NOT NULL
);

