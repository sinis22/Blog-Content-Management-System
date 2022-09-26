USE contentManagerDB;

INSERT INTO role (name) values
	("ROLE_ADMIN"),
    ("ROLE_MANAGER"),
    ("ROLE_USER");

INSERT INTO user (username, password, firstname, lastname, email, phone, enable) values 
	("admin", "password", "Giedrius", "Banys", "gidbanys@gmail.com", "347318500", true),
    ("content1", "password", "John", "Doe", "johnDoe@gmail.com", "3478459586", true),
    ("content2", "password", "Marry", "Jane", "marryJ@gmail.com", "9294785961", true),
    ("user1", "password", "Willaim", "Smith", "will@gmail.com", "3474898000", true),
    ("user2", "password", "Jay", "Won", "jwon@gmail.com", "2015467845", true),
    ("user3", "password", "kavin", "Stones", "kavstone@gmail.com", "9295145599", true);
    
INSERT INTO user_role (userId, roleId) values
	(1, 1), (1, 2), (1, 3),
    (2, 2), (2, 3),
    (3, 2), (3, 3),
    (4,3),
    (5,3),
    (6,3);
    
INSERT INTO tag (name) values
	("#Cat"),
    ("#Kitten"),
    ("#Kitty"),
    ("#Paws"),
    ("#Tail"),
    ("#Animal"),
    ("#Fur"),
    ("#Eyes"),
    ("#Hair"),
    ("#Breed");
    
INSERT INTO content (createDate, title, type, status, userId, content) values
	("2020-7-1", "Adorable white kitten", "blog", "public", 1,
		"This is some good content"),
	("2020-6-1", "Tiny kittens in cups", "blog", "public", 2,
		"This is some good content"),
    ("2020-2-1", "The white panther", "blog", "public", 2,
		"This is some good content"),
    ("2019-7-1", "Ginger cat", "blog", "public", 3,
		"This is some good content"),
    ("2018-7-1", "Disclaimer", "static", "public", 1,
		"This is some good content"),
    ("2020-7-11", "Contact Us", "static", "public", 1,
		"This is some good content"),
    ("2020-7-1", "About Us", "static", "public", 1,
		"This is some good content");
        
INSERT INTO content_tag (contentId, tagId) values 
	(1, 1), (1, 2),
    (2, 4), (2, 5),
    (3, 4), (3, 6),
	(4, 4), (4, 7), (4, 2);
    
INSERT INTO comment (createDate, comment, userId, contentId) values 
	("2020-7-11", "So adorable.", 6, 2),
    ("2020-7-12", "This cat is good !!", 5, 1),
    ("2020-7-13", "I like this cat !!", 6, 2),
    ("2020-7-13", "This is a beautiful cat ...", 6, 1);
        

UPDATE user SET password = '$2a$10$F2ERRQiGv0yK5wnUiHWdxeJYyS8q3s/gBEXgHg18GcJ.VHFeRoitC' WHERE id = 1;
UPDATE user SET password = '$2a$10$F2ERRQiGv0yK5wnUiHWdxeJYyS8q3s/gBEXgHg18GcJ.VHFeRoitC' WHERE id = 2;
UPDATE user SET password = '$2a$10$F2ERRQiGv0yK5wnUiHWdxeJYyS8q3s/gBEXgHg18GcJ.VHFeRoitC' WHERE id = 3;
UPDATE user SET password = '$2a$10$F2ERRQiGv0yK5wnUiHWdxeJYyS8q3s/gBEXgHg18GcJ.VHFeRoitC' WHERE id = 4;
UPDATE user SET password = '$2a$10$F2ERRQiGv0yK5wnUiHWdxeJYyS8q3s/gBEXgHg18GcJ.VHFeRoitC' WHERE id = 5;
UPDATE user SET password = '$2a$10$F2ERRQiGv0yK5wnUiHWdxeJYyS8q3s/gBEXgHg18GcJ.VHFeRoitC' WHERE id = 6;
        
        
UPDATE content SET titlePicture = "https://www.animalfriends.co.uk/siteassets/media/images/article-images/cat-articles/38_afi_article1_caring-for-a-kitten-tips-for-the-first-month.png" WHERE id = 1;
UPDATE content SET titlePicture = "https://i.pinimg.com/originals/16/f7/bd/16f7bd162e2e679dd4dbdb97a6f11d94.jpg" WHERE id = 2;
UPDATE content SET titlePicture = "https://www.daysoftheyear.com/cdn-cgi/image/dpr=1%2Cf=auto%2Cfit=cover%2Cheight=675%2Cmetadata=none%2Conerror=redirect%2Cq=85%2Cwidth=1200/wp-content/uploads/international-black-cat-awareness-month-e1575287719521.jpg" WHERE id = 3;
UPDATE content SET titlePicture = "https://nationaltoday.com/wp-content/uploads/2022/01/Ginger-Cat-640x514.jpg" WHERE id = 4;
-- UPDATE content SET titlePicture = "https://i.ibb.co/7zDs3RN/best-gaming-pc-2020.jpg" WHERE id = 5;
-- UPDATE content SET titlePicture = "https://i.ibb.co/7zDs3RN/best-gaming-pc-2020.jpg" WHERE id = 6;
-- UPDATE content SET titlePicture = "https://i.ibb.co/7zDs3RN/best-gaming-pc-2020.jpg" WHERE id = 7;        

UPDATE content SET scheduleDate = "2020-6-1" WHERE id = 1;
UPDATE content SET scheduleDate = "2020-6-28" WHERE id = 2;
UPDATE content SET scheduleDate = "2020-7-1" WHERE id = 3;
UPDATE content SET scheduleDate = "2020-7-15" WHERE id = 4;
UPDATE content SET scheduleDate = "2020-7-26" WHERE id = 5;
UPDATE content SET scheduleDate = "2020-7-26" WHERE id = 6;
UPDATE content SET scheduleDate = "2020-7-26" WHERE id = 7;
        
        
        
        