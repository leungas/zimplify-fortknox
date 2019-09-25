CREATE DATABASE IF NOT EXISTS ZIMPLIFY ;

CREATE USER 'zimplidba'@'localhost' IDENTIFIED WITH mysql_native_password BY 'ZimplifyDBA';
CREATE USER 'zimplidba'@'192.168.56.%' IDENTIFIED WITH mysql_native_password BY 'ZimplifyDBA';

CREATE USER 'zimplidev'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Z1mPid*V';
CREATE USER 'zimplidev'@'192.168.56.%' IDENTIFIED WITH mysql_native_password BY 'Z1mPid*V';

CREATE USER 'zimplify'@'localhost' IDENTIFIED WITH mysql_native_password BY 'Z1mPlify';
CREATE USER 'zimplify'@'127.0.0.1' IDENTIFIED WITH mysql_native_password BY 'Z1mPlify';
CREATE USER 'zimplify'@'172.31.%.%' IDENTIFIED WITH mysql_native_password BY 'Z1mPlify';
CREATE USER 'zimplify'@'192.168.56.%' IDENTIFIED WITH mysql_native_password BY 'Z1mPlify';

USE ZIMPLIFY;

-- FOR LOCAL ACCESS FOR DBA
GRANT ALL ON ZIMPLIFY.* TO 'zimplidba'@'localhost';
GRANT ALL ON ZIMPLIFY.* TO 'zimplidba'@'localhost';

-- FOR REMOTE DEV ACCESS - DO NOT USE THIS FOR LIVE
GRANT ALL ON ZIMPLIFY.* TO 'zimplidev'@'192.168.56.%';

-- THIS IS FOR THE PROVIDER ACCESS
GRANT SELECT ON ZIMPLIFY.* TO 'zimplify'@'localhost';
GRANT UPDATE ON ZIMPLIFY.* TO 'zimplify'@'localhost';
GRANT DELETE ON ZIMPLIFY.* TO 'zimplify'@'localhost';
GRANT EXECUTE ON ZIMPLIFY.* TO 'zimplify'@'localhost';

GRANT SELECT ON ZIMPLIFY.* TO 'zimplify'@'127.0.0.1';
GRANT UPDATE ON ZIMPLIFY.* TO 'zimplify'@'127.0.0.1';
GRANT DELETE ON ZIMPLIFY.* TO 'zimplify'@'127.0.0.1';
GRANT EXECUTE ON ZIMPLIFY.* TO 'zimplify'@'127.0.0.1';

GRANT SELECT ON ZIMPLIFY.* TO 'zimplify'@'172.31.%.%';
GRANT UPDATE ON ZIMPLIFY.* TO 'zimplify'@'172.31.%.%';
GRANT DELETE ON ZIMPLIFY.* TO 'zimplify'@'172.31.%.%';
GRANT EXECUTE ON ZIMPLIFY.* TO 'zimplify'@'172.31.%.%';

GRANT SELECT ON ZIMPLIFY.* TO 'zimplify'@'192.168.56.%';
GRANT UPDATE ON ZIMPLIFY.* TO 'zimplify'@'192.168.56.%';
GRANT DELETE ON ZIMPLIFY.* TO 'zimplify'@'192.168.56.%';
GRANT EXECUTE ON ZIMPLIFY.* TO 'zimplify'@'192.168.56.%';


-- NOW MAKE SURE WE FLUSH
FLUSH PRIVILEGES;
