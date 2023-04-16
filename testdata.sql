
------------------
-- test users

INSERT INTO users (
    name,
    password,
    email
) VALUES (
    'test_user_1',
    'abc',
    'test_user_1@fakeemail.com'
);


INSERT INTO users (
    name,
    password,
    email
) VALUES (
    'test_user_2',
    'abc',
    'test_user_2@fakeemail.com'
);


INSERT INTO users (
    name,
    password,
    email
) VALUES (
    'test_user_3',
    'abc',
    'test_user_3@fakeemail.com'
);


INSERT INTO users (
    name,
    password,
    email
) VALUES (
    'test_user_4',
    'abc',
    'test_user_4@fakeemail.com'
);


INSERT INTO users (
    name,
    password,
    email
) VALUES (
    'test_user_5',
    'abc',
    'test_user_5@fakeemail.com'
);


--------------
-- test games

INSERT INTO games (
    completed,
    white_id,
    black_id,
    result
) VALUES (
    CURRENT_TIMESTAMP,
    1,
    2,
    'BLACK_WIN'
);

INSERT INTO games (
    completed,
    white_id,
    black_id,
    result
) VALUES (
    CURRENT_TIMESTAMP,
    2,
    3,
    'WHITE_WIN'
);

INSERT INTO games (
    completed,
    white_id,
    black_id,
    result
) VALUES (
    CURRENT_TIMESTAMP,
    3,
    4,
    'BLACK_WIN'
);

INSERT INTO games (
    white_id,
    black_id
) VALUES (
    4,
    5
);

INSERT INTO games (
    white_id,
    black_id
) VALUES (
    5,
    1
);


----------------
-- test follows

INSERT INTO follows (
    follower_id,
    followee_id
) VALUES (
    1,
    2
);

INSERT INTO follows (
    follower_id,
    followee_id
) VALUES (
    2,
    3
);

INSERT INTO follows (
    follower_id,
    followee_id
) VALUES (
    3,
    4
);

INSERT INTO follows (
    follower_id,
    followee_id
) VALUES (
    4,
    5
);

INSERT INTO follows (
    follower_id,
    followee_id
) VALUES (
    5,
    1
);


--------------
-- messages

INSERT INTO messages (
    from_id,
    to_id,
    message
) VALUES (
    1,
    2,
    'good game'
);

INSERT INTO messages (
    from_id,
    to_id,
    message
) VALUES (
    2,
    3,
    'you suck at chess'
);

INSERT INTO messages (
    from_id,
    to_id,
    message
) VALUES (
    3,
    4,
    'nice move'
);

INSERT INTO messages (
    from_id,
    to_id,
    message
) VALUES (
    4,
    5,
    'I give up'
);

INSERT INTO messages (
    from_id,
    to_id,
    message
) VALUES (
    5,
    1,
    'don''t quit your day job'
);

