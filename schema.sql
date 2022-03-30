CREATE TABLE poll (
    id SERIAL PRIMARY KEY,
    topic TEXT,
);
CREATE TABLE choices (
    id SERIAL PRIMARY KEY,
    poll_id INTEGER REFERENCES polls,
    choice TEXT
);
CREATE TABLE answers (
    id SERIAL PRIMARY KEY,
    choice_id INTEGER REFERENCES choices,
);
