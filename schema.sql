
CREATE TABLE users (
    id serial PRIMARY KEY, 
    name varchar(15) UNIQUE NOT NULL,
    password varchar(255) NOT NULL,
    email varchar(255) UNIQUE NOT NULL,
    joined timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    wins int DEFAULT 0,
    losses int DEFAULT 0,
    draws int DEFAULT 0
);

CREATE TYPE result AS ENUM ('BLACK_WIN', 'WHITE_WIN', 'DRAW');

CREATE TABLE games (
    id serial PRIMARY KEY,
    started timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    completed timestamp,
    white_id int NOT NULL REFERENCES users(id),
    black_id int NOT NULL REFERENCES users(id),
    result RESULT
);

CREATE TABLE follows (
    id serial PRIMARY KEY,
    follower_id int NOT NULL REFERENCES users(id),
    followee_id int NOT NULL REFERENCES users(id)
);

CREATE TABLE messages (
    id serial PRIMARY KEY,
    sent timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    from_id int NOT NULL REFERENCES users(id),
    to_id int NOT NULL REFERENCES users(id),
    message varchar(255) NOT NULL
);

