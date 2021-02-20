CREATE TABLE `Users` (
                         `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                         `userid` varchar(255) NOT NULL DEFAULT '',
                         `password` varchar(255) NOT NULL DEFAULT '',
                         `email` varchar(255) NOT NULL DEFAULT '',
                         `phone` varchar(255) DEFAULT NULL,
                         `firstName` varchar(255) DEFAULT NULL,
                         `lastName` varchar(255) DEFAULT NULL,
                         `expired` int(11) NOT NULL DEFAULT '0',
                         `disabled` int(11) NOT NULL DEFAULT '0',
                         `memberOf` varchar(255) NOT NULL DEFAULT 'slave',
                         PRIMARY KEY (`id`)
);

CREATE TABLE `Questions` (
                             `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                             `userid` varchar(255) NOT NULL DEFAULT '',
                             `question` varchar(255) NOT NULL DEFAULT '',
                             `answer` varchar(255) NOT NULL DEFAULT '',
                             PRIMARY KEY (`id`)
);

INSERT INTO Users  (userid, password, email, phone, firstName, lastName, expired, disabled, memberOf)
VALUES
('LegitUser', 'passw0rd', 'test1@test.net', '111-867-5309', 'Legit', 'User', 0, 0, 'master'),
('ExpiredUser', 'passw0rd', 'test2@test.net', '111-867-5310', 'Expired', 'User', 1, 0, 'slave');

UPDATE Users SET password='$2y$10$PKPHk37ll75.luYyJEVpiO81Axx0RxIY2Ew71e0h2WYptqT/k5rCG' WHERE userid='LegitUser';
UPDATE Users SET password='$2y$10$4jIh05jORp7kbFoZSo2zceSfm.zBlJaEAhJwVzRRVjM7WdmNYnh3K' WHERE userid='ExpiredUser';

# Adding these questions now, will be used for the PM section of the tutorial
INSERT INTO Questions  (userid, question, answer)
VALUES
('TestTwo', 'What is your favorite food?', 'Meat'),
('TestTwo', 'What is your favorite video game?', 'Fallout4');