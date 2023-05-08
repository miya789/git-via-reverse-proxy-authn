-- db
DROP SCHEMA IF EXISTS apache_session;
CREATE SCHEMA apache_session;
-- user
CREATE USER apache @apache IDENTIFIED BY 'apache-password';
-- table
USE apache_session;
DROP TABLE IF EXISTS session;
CREATE TABLE session (value text, expiry bigint, `key` text);
GRANT SELECT ON session TO apache @apache IDENTIFIED BY 'apache-password';
GRANT INSERT ON session TO apache @apache IDENTIFIED BY 'apache-password';
GRANT DELETE ON session TO apache @apache IDENTIFIED BY 'apache-password';
GRANT UPDATE ON session TO apache @apache IDENTIFIED BY 'apache-password';