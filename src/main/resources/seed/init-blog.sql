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
                         PRIMARY KEY (`id`)
);

# Creating this table now, will be used for the PM section of the tutorial
CREATE TABLE `Questions` (
                             `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                             `userid` varchar(255) NOT NULL DEFAULT '',
                             `question` varchar(255) NOT NULL DEFAULT '',
                             `answer` varchar(255) NOT NULL DEFAULT '',
                             PRIMARY KEY (`id`)
);

INSERT INTO Users  (userid, password, email, phone, firstName, lastName, expired, disabled)
VALUES
('LegitUser', 'passw0rd', 'test1@test.net', '111-867-5309', 'Legit', 'User', 0, 0),
('ExpiredUser', 'passw0rd', 'test2@test.net', '111-867-5310', 'Expired', 'User', 1, 0);

# Adding these questions now, will be used for the PM section of the tutorial
INSERT INTO Questions  (userid, question, answer)
VALUES
('TestTwo', 'What is your favorite food?', 'Meat'),
('TestTwo', 'What is your favorite video game?', 'Fallout4');