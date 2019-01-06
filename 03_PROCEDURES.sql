USE ZIMPLIFY;

DELIMITER $$

CREATE PROCEDURE ZDP_SYOB_SET (ID VARCHAR(1024), DT JSON) 
BEGIN
    INSERT INTO ZIMPLIFY_OBJECTS(SYOB_ID, SYOB_DATA) 
        VALUES (ID, DT)
        ON DUPLICATE KEY 
            UPDATE SYOB_DATA = DT;
END;
$$

CREATE PROCEDURE ZDP_SYOB_DEL (ID VARCHAR(1024)) 
BEGIN   
    DELETE FROM ZIMPLIFY_OBJECTS WHERE SYOB_ID = ID;
END;
$$

CREATE PROCEDURE ZDP_DCOB_SET (ID VARCHAR(1024), DT JSON) 
BEGIN
    INSERT INTO ZIMPLIFY_DOCUMENTS(DCOB_ID, DCOB_DATA) 
        VALUES (ID, DT)
        ON DUPLICATE KEY 
            UPDATE DCOB_DATA = DT;
END;
$$

CREATE PROCEDURE ZDP_DCOB_DEL (ID VARCHAR(1024)) 
BEGIN   
    DELETE FROM ZIMPLIFY_DOCUMENTS WHERE DCOB_ID = ID;
END;
$$

CREATE PROCEDURE ZDP_EVOB_SET (ID VARCHAR(1024), DT JSON) 
BEGIN
    INSERT INTO ZIMPLIFY_EVENTS(EVOB_ID, EVOB_DATA) 
        VALUES (ID, DT)
        ON DUPLICATE KEY 
            UPDATE EVOB_DATA = DT;
END;
$$

CREATE PROCEDURE ZDP_EVOB_DEL (ID VARCHAR(1024)) 
BEGIN   
    DELETE FROM ZIMPLIFY_EVENTS WHERE EVOB_ID = ID;
END;
$$

CREATE PROCEDURE ZDP_MGOB_SET (ID VARCHAR(1024), DT JSON) 
BEGIN
    INSERT INTO ZIMPLIFY_MESSAGES(MGOB_ID, MGOB_DATA) 
        VALUES (ID, DT)
        ON DUPLICATE KEY 
            UPDATE MGOB_DATA = DT;
END;
$$

CREATE PROCEDURE ZDP_MGOB_DEL (ID VARCHAR(1024)) 
BEGIN   
    DELETE FROM ZIMPLIFY_MESSAGES WHERE MGOB_ID = ID;
END;
$$

CREATE PROCEDURE ZDP_ROOB_SET (ID VARCHAR(1024), DT JSON) 
BEGIN
    INSERT INTO ZIMPLIFY_READONLINES(ROOB_ID, ROOB_DATA) VALUES (ID, DT);
END;
$$

CREATE PROCEDURE ZDP_ROOB_DEL (ID VARCHAR(1024)) 
BEGIN   
    DELETE FROM ZIMPLIFY_READONLINES WHERE ROOB_ID = ID;
END;
$$

DELIMITER ;
