CREATE DATABASE IF NOT EXISTS uvlhubdb_test;

CREATE USER IF NOT EXISTS 'uvlhub_user'@'localhost'
IDENTIFIED BY 'uvlhub_password';

GRANT ALL PRIVILEGES ON uvlhubdb.*
TO 'uvlhub_user'@'localhost';

GRANT ALL PRIVILEGES ON uvlhubdb_test.*
TO 'uvlhub_user'@'localhost';

FLUSH PRIVILEGES;
