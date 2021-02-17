CREATE TABLE t_user
(
    id       int(11) NOT NULL AUTO_INCREMENT,
    username varchar(100) NOT NULL,
    password varchar(64),
    nickname varchar(256) DEFAULT NULL,
    PRIMARY KEY (id),
    UNIQUE KEY username (username) USING BTREE
);

INSERT INTO t_user
VALUES (1, 'admin1', 'passw0rd', 'admin1'),
       (2, 'user1', 'passw0rd', 'user1');
