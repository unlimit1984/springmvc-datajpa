--
-- CREATE TABLE users (
--   id int(11) NOT NULL AUTO_INCREMENT,
--   dob datetime DEFAULT NULL,
--   email varchar(255) NOT NULL,
--   name varchar(255) DEFAULT NULL,
--   password varchar(255) NOT NULL,
--   PRIMARY KEY (id),
--   UNIQUE KEY UK_avh1b2ec82audum2lyjx2p1ws (email)
-- );
--
-- CREATE TABLE roles (
--   role_id int(11) NOT NULL AUTO_INCREMENT,
--   role_name varchar(255) NOT NULL,
--   user_id int(11) DEFAULT NULL,
--   PRIMARY KEY (role_id),
--   FOREIGN KEY (user_id) REFERENCES users (id)
-- );
--

CREATE TABLE users (
  id           INT              NOT NULL GENERATED ALWAYS AS IDENTITY ( START WITH 1, INCREMENT BY 1),
  dob TIMESTAMP        DEFAULT CURRENT_TIMESTAMP,
  email varchar(255) NOT NULL,
  name varchar(255) DEFAULT NULL,
  password varchar(255) NOT NULL,
  UNIQUE(email),
  CONSTRAINT primary_key_users PRIMARY KEY (id)
);

CREATE TABLE roles (
  role_id INT              NOT NULL GENERATED ALWAYS AS IDENTITY ( START WITH 1, INCREMENT BY 1),
  role_name varchar(255) NOT NULL,
  user_id INT NOT NULL,
  CONSTRAINT primary_key_roles PRIMARY KEY (role_id),
  CONSTRAINT roles_userid_ref FOREIGN KEY (user_id) REFERENCES users (id)
);