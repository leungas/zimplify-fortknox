USE ZIMPLIFY;

CREATE VIEW ZDV_SYOB_GET AS SELECT * FROM ZIMPLIFY_OBJECTS;

CREATE VIEW ZDV_DCOB_GET AS SELECT * FROM ZIMPLIFY_DOCUMENTS;

CREATE VIEW ZDV_EVOB_GET AS SELECT * FROM ZIMPLIFY_EVENTS;

CREATE VIEW ZDV_MGOB_GET AS SELECT * FROM ZIMPLIFY_MESSAGES;

CREATE VIEW ZDV_ROOB_GET AS SELECT * FROM ZIMPLIFY_READONLIES;

CREATE VIEW ZDV_TKOB_GET AS SELECT * FROM ZIMPLIFY_TASKS;