-- Create new table is_base
DROP TABLE IF EXISTS is_base;
CREATE TABLE is_base (
base_id varchar(89) NOT NULL DEFAULT 'xera_base',
base_name varchar(20) NOT NULL,
base_email varchar(100) NOT NULL,
base_forum varchar(100) NOT NULL,
base_template varchar(100) NOT NULL,
base_status varchar(20) NOT NULL
);
-- Insert default record for is_base
INSERT INTO is_base (
base_id,
base_name,
base_email,
base_forum,
base_template,
base_status
) VALUES (
'xera_base',
'site name',
'admin@example.com',
'forum.example.com',
'default_template',
'active'
);
-- Insert default record for is_recaptcha
INSERT INTO is_recaptcha (
recaptcha_id,
recaptcha_site,
recaptcha_key,
recaptcha_status,
recaptcha_type
) VALUES (
'xera_recaptcha',
'site key',
'secret key',
'inactive',
'google'
);
-- Create new table is_smtp
DROP TABLE IF EXISTS is_smtp;
CREATE TABLE is_smtp (
smtp_id varchar(9) NOT NULL DEFAULT 'xera_smtp',
smtp_hostname varchar(100) NOT NULL,
smtp_username varchar(100) NOT NULL,
smtp_password varchar(100) NOT NULL,
smtp_port varchar(10) NOT NULL,
smtp_sender varchar(100) NOT NULL,
smtp_status varchar(20) NOT NULL,
smtp_type varchar(20) NOT NULL
);
-- Insert default record for is_smtp
INSERT INTO is_smtp (
smtp_id,
smtp_hostname,
smtp_username,
smtp_password,
smtp_port,
smtp_sender,
smtp_status,
smtp_type
) VALUES (
'xera_smtp',
'smtp.example.com',
'username',
'password',
'587',
'john@example.com',
'inactive',
'Web Host'
);
-- Create new table is_mofh
DROP TABLE IF EXISTS is_mofh;
CREATE TABLE is_mofh (
mofh_id varchar(9) NOT NULL DEFAULT 'xera_mofh',
mofh_username varchar(256) NOT NULL,
mofh_password varchar(256) NOT NULL
);
-- Insert default record for is_mofh
INSERT INTO is_mofh (
mofh_id,
mofh_username,
mofh_password
) VALUES (
'xera_mofh',
'mofh_username',
'mofh_password'
);
-- Create new table is_user
DROP TABLE IF EXISTS is_user;
CREATE TABLE is_user (
user_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
user_name varchar(50) NOT NULL,
user_email varchar(100) NOT NULL,
user_password varchar(100) NOT NULL,
user_rec varchar(32) NOT NULL,
user_status varchar(8) NOT NULL,
user_oauth varchar(8) NOT NULL DEFAULT 'disabled',
user_date varchar(20) NOT NULL
);
-- Create new table is_admin
DROP TABLE IF EXISTS is_admin;
CREATE TABLE is_admin (
admin_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
admin_name varchar(50) NOT NULL,
admin_email varchar(100) NOT NULL,
admin_password varchar(100) NOT NULL,
admin_key varchar(16) NOT NULL,
admin_rec varchar(32) NOT NULL,
admin_status varchar(8) NOT NULL,
admin_date varchar(20) NOT NULL
);
-- Create new table is_email
DROP TABLE IF EXISTS is_email;
CREATE TABLE is_email (
email_id varchar(50) NOT NULL,
email_subject varchar(200) NOT NULL,
email_content varchar(10000) NOT NULL,
email_for varchar(8) NOT NULL,
email_doc varchar(500) NOT NULL
);
-- Insert default records for is_email
-- New user
INSERT INTO is_email (
email_id,
email_subject,
email_content,
email_for,
email_doc
) VALUES (
'registration',
'Registration Confirmation',
'Hi {user_name}!<br>
Thank you for registering on {site_name}. Your account has been successfully created.<br>
Regards, {site_name}',
'user',
'{user_name}, {user_email}, {site_name}'
);
-- Account suspended
INSERT INTO is_email (
email_id,
email_subject,
email_content,
email_for,
email_doc
) VALUES (
'account_suspended',
'Account Suspended',
'Hi {user_name}!<br>
Your account has been suspended due to {reason}. Please contact support for further assistance.<br>
Regards, {site_name}',
'user',
'{user_name}, {site_name}, {reason}'
);
-- Account reactivated
INSERT INTO is_email (
email_id,
email_subject,
email_content,
email_for,
email_doc
) VALUES (
'account_reactivated',
'Account Reactivated',
'Hi {user_name}!<br>
Your account has been reactivated. You can now log in and access your account.<br>
Regards, {site_name}',
'user',
'{user_name}, {site_name}'
);
-- Account deleted
INSERT INTO is_email (
email_id,
email_subject,
email_content,
email_for,
email_doc
) VALUES (
'account_deleted',
'Account Deleted',
'Hi {user_name}!<br>
Your account with the username {account_username} has been deleted. Please visit our client area to create a new account.<br>
Regards, {site_name}',
'user',
'{site_name}, {site_url}, {account_username}, {user_name}, {user_email}'
);
-- Create new table is_ticket
DROP TABLE IF EXISTS is_ticket;
CREATE TABLE is_ticket (
ticket_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
ticket_subject varchar(300) NOT NULL,
ticket_content varchar(10000) NOT NULL,
ticket_status varchar(20) NOT NULL,
ticket_key varchar(8) NOT NULL,
ticket_for varchar(16) NOT NULL,
ticket_time varchar(20) NOT NULL
);
-- Create new table is_reply
DROP TABLE IF EXISTS is_reply;
CREATE TABLE is_reply (
reply_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
reply_content varchar(10000) NOT NULL,
reply_by varchar(16) NOT NULL,
reply_for varchar(8) NOT NULL,
reply_time int(20) NOT NULL
);
-- Create new table is_account
DROP TABLE IF EXISTS is_account;
CREATE TABLE is_account (
account_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
account_label varchar(250) NOT NULL,
account_username varchar(20) NOT NULL,
account_password varchar(20) NOT NULL,
account_status varchar(20) NOT NULL,
account_sql varchar(6) NOT NULL DEFAULT 'sqlxxx',
account_key varchar(8) NOT NULL,
account_for varchar(16) NOT NULL,
account_time varchar(20) NOT NULL,
account_domain varchar(50) NOT NULL,
account_main varchar(50) NOT NULL
);
-- Create new table is_domain
DROP TABLE IF EXISTS is_domain;
CREATE TABLE is_domain (
domain_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
domain_name varchar(100) NOT NULL
);
INSERT INTO is_domain (domain_name) VALUES ('example.com');
-- Create new table is_builder
DROP TABLE IF EXISTS is_builder;
CREATE TABLE is_builder (
builder_id varchar(12) NOT NULL DEFAULT 'xera_builder',
builder_hostname varchar(100) NOT NULL,
builder_username varchar(100) NOT NULL,
builder_password varchar(100) NOT NULL,
builder_status varchar(8) NOT NULL
);
INSERT INTO is_builder (
builder_hostname,
builder_username,
builder_password,
builder_status
) VALUES (
'https://site.pro',
'username',
'password',
'inactive'
);
-- Create new table is_gogetssl
DROP TABLE IF EXISTS is_gogetssl;
CREATE TABLE is_gogetssl (
gogetssl_id varchar(13) NOT NULL DEFAULT 'xera_gogetssl',
gogetssl_username varchar(100) NOT NULL,
gogetssl_password varchar(100) NOT NULL,
gogetssl_status varchar(8) NOT NULL
);
INSERT INTO is_gogetssl (
gogetssl_username,
gogetssl_password,
gogetssl_status
) VALUES (
'username',
'password',
'inactive'
);
-- Create new table is_ssl
DROP TABLE IF EXISTS is_ssl;
CREATE TABLE is_ssl (
ssl_id int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
ssl_pid varchar(250) NOT NULL,
ssl_key varchar(20) NOT NULL,
ssl_for varchar(20) NOT NULL
);
-- Create new table is_oauth
DROP TABLE IF EXISTS is_oauth;
CREATE TABLE is_oauth (
oauth_id varchar(20) NOT NULL,
oauth_client varchar(100) NOT NULL,
oauth_secret varchar(100) NOT NULL,
oauth_endpoint varchar(100) NOT NULL,
oauth_status varchar(8) NOT NULL
);
INSERT INTO is_oauth (
oauth_id,
oauth_client,
oauth_secret,
oauth_endpoint,
oauth_status
) VALUES (
'github',
'client key',
'client key',
'https://api.github.com/user',
'inactive'
);
