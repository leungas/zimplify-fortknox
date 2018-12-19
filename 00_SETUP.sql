CREATE DATABASE IF NOT EXISTS ZIMPLIFY ;

CREATE USER 'zimplidba'@'localhost' IDENTIFIED BY 'Z1mPlidB@';
CREATE USER 'zimplidev'@'192.168.56.%' IDENTIFIED BY 'Z1mPid*V';
CREATE USER 'zimplify'@'192.168.56.%' IDENTIFIED BY 'Z1mPlify';

-- FOR LOCAL ACCESS FOR DBA
GRANT ALL ON ZIMPLIFY TO 'zimplidba'@'localhost';

-- FOR REMOTE DEV ACCESS - DO NOT USE THIS FOR LIVE
GRANT ALL ON ZIMPLIFY TO 'zimplidev'@'192.168.56.%';

-- THIS IS FOR THE PROVIDER ACCESS
GRANT SELECT ON ZIMPLIFY.* TO 'zimplify'@'192.168.56.%';
GRANT EXECUTE ON ZIMPLIFY.* TO 'zimplify'@'192.168.56.%';

-- NOW MAKE SURE WE FLUSH
FLUSH PRIVILEGES;
