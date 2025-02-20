CREATE USER c##oltp IDENTIFIED BY cimatec;

CREATE USER c##olap IDENTIFIED BY cimatec;

GRANT CONNECT, DBA TO c##oltp, c##olap; 