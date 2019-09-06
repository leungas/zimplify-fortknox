USE ZIMPLIFY;

CREATE TABLE ZIMPLIFY_OBJECTS (
    SYOB_ID  VARCHAR(512) NOT NULL PRIMARY KEY,
    SYOB_DATA JSON NOT NULL
);

CREATE TABLE ZIMPLIFY_DOCUMENTS (
    DCOB_ID  VARCHAR(512) NOT NULL PRIMARY KEY,
    DCOB_DATA JSON NOT NULL
);

CREATE TABLE ZIMPLIFY_EVENTS (
    EVOB_ID  VARCHAR(512) NOT NULL PRIMARY KEY,
    EVOB_DATA JSON NOT NULL
);

CREATE TABLE ZIMPLIFY_MESSAGES (
    MGOB_ID  VARCHAR(512) NOT NULL PRIMARY KEY,
    MGOB_DATA JSON NOT NULL
);

CREATE TABLE ZIMPLIFY_READONLIES (
    ROOB_ID  VARCHAR(512) NOT NULL PRIMARY KEY,
    ROOB_DATA JSON NOT NULL
);

CREATE TABLE ZIMPLIFY_TASKS (
    TKOB_ID  VARCHAR(512) NOT NULL PRIMARY KEY,
    TKOB_DATA JSON NOT NULL
);

