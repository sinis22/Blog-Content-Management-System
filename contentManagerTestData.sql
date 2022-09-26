USE contentManagerTestDB;

INSERT INTO role (name) values
	("ROLE_ADMIN"),
    ("ROLE_MANAGER"),
    ("ROLE_USER");

INSERT INTO user (username, password, firstname, lastname, email, phone, enable) values 
	("admin", "password", "Hamsini", "Shivakumar", "HamsiniS@gmail.com", "123456789", true),
    ("content1", "password", "Brian", "Tobin", "BrianT@gmail.com", "123456789", true),
	("content1", "password", "Margin", "Kantilal", "MarginK@gmail.com", "123456789", true),
	("content1", "password", "Giedrius", "Banys", "GiedriusB@gmail.com", "123456789", true),
    ("content2", "password", "Paige", "Watson", "PaigeW@gmail.com", "123456789", true),
    ("user1", "password", "Willaim", "Smith", "will@gmail.com", "123456789", true),
    ("user2", "password", "Jay", "Won", "jwon@gmail.com", "123456789", true);
    
INSERT INTO user_role (userId, roleId) values
	(1, 1), (1, 2), (1, 3),
    (2, 2), (2, 3),
    (3, 2), (3, 3),
    (4, 2), (4, 3),
    (5, 2), (5, 3),
    (6,3),
    (7,3);
        
INSERT INTO tag (name) values
	("Fantasy"),
    ("Cartoon"),
    ("Adventure"),
    ("Narrative"),
    ("Comedy"),
    ("Science Fiction"),
    ("Books"),
    ("Action"),
    ("Horror"),
    ("Romance"),
    ("Musical"),
    ("Drama"),
    ("International"),
    ("Dystopian"),
    ("Mystery");
    
INSERT INTO content (createDate, title, type, status, userId, content) values
	("2022-9-23", "The Emoji Movie - the Most Movie of All Time", "blog", "public", 2,
		"In 2014, Phil Lord and Chris Miller managed to take The LEGO Movie - what seemed like on the surface to be nothing more than a cheap cash grab by the studio - and turn it into one of the best films of that year. So going into The Emoji Movie this week, I felt a similar trepidation as I did going into that 2014 animated adventure, but I also had a sense of optimistic belief, knowing that there was a chance The Emoji Movie could prove me wrong. For the first twenty minutes or so of the film too, The Emoji Movie manages to explain the seemingly unexplainable life of an “Emoji” on the big screen in unexpectedly interesting and ingenious ways. With references to the “favorite Emojis club” and how strange combinations of Emojis can even amuse the Emojis themselves, the film shows it has the potential to be a legitimately entertaining ride through a teenager’s smartphone. But as The Emoji Movie goes on, the film reveals itself to be just as misguided and nonsensical an endeavor as many assumed it would be when it was originally announced. 
        Based on the titular Emojis “living” inside of your smartphone, The Emoji Movie takes place in Textopolis, a digital city where all of a phone’s respective Emojis live, and where they spend every day ready and waiting to be scanned for a text message by their phone’s owner - in this case, a high school freshman named Alex (Jake T. Austin). But in a city where every emoji is expected to only act and feel like their assigned emotions - Mr. Poop (Patrick Stewart) can only make toilet jokes, and Smiler (Maya Rudolph) can never stop smiling - the film introduces us to the one Emoji who’s unable to act that restricted. This is Gene (T.J. Miller), a “meh” Emoji who just can’t contain the excitement he feels about living in Textopolis, and as such, becomes recognized as a social outcast among his peers.
        Things go from bad to worse, however, when Gene goes against the advice of his perfectly “Meh” parents (Steven Wright and Jennifer Coolidge), and gets scanned as the wrong Emoji by Alex, making him be labeled as a “malfunction” by the other Emojis. As he goes on the run from antivirus bots determined to delete him from the phone, Gene journeys to find a hacker named Jailbreak (Anna Faris), who may be able to fix his source code in the Cloud and effectively turn him into the perfect “meh.”"),
	("2022-9-23", "K.G.F: Chapter 2", "blog", "public", 3,
		"The screenplay, cuts and sound effects deserves a standing ovation. There are illogical moments but that don’t take away you, because the Director keeps you invested in the ‘state of disbelief’ and that is the success of this movie. There is hardly any sugarcoating to the criminal angle of Rocky, and it is more of a man with a promise to fulfill. Kudos to the entire cast and crew for a honest ‘masala movie’!!"),
    ("2022-9-23", "Harry Potter and the deathly hallows part 2", "blog", "public", 4,
		"Harry potter finally defeats Voldermort in a very dramatic battle"),
    ("2022-9-23", "Monsters, Inc", "blog", "public", 5,
		"In a world inhabited by monsters, the city of Monstropolis harnesses the screams of human children for energy. At the Monsters, Incorporated factory, skilled monsters employed as “scarers” venture into the human world to scare children and harvest their screams, through doors that activate portals to children’s bedroom closets. The work is considered dangerous, as human children are believed to be toxic and capable of killing a monster through physical contact. Energy production is declining because children are becoming less easily scared, and the company’s CEO, Henry J. Waternoose III, is determined to prevent the company’s collapse.
        One evening after work, top-ranking scarer James P. Sulley Sullivan, discovers that an active door has been left in the station of his rival, Randall Boggs. He inspects the door and accidentally lets a small toddler girl into the factory. Frightened, Sulley unsuccessfully attempts to return the girl, who escapes into Monstropolis, interrupting Sulley’s best friend and assistant Mike Wazowski on a date at a sushi restaurant. Chaos erupts when other monsters see the girl; Sulley and Mike manage to escape with her before the Child Detection Agency (CDA) arrives and quarantines the restaurant. Forced to keep the girl hidden in their apartment for the night, Sulley soon realizes that the girl is not toxic and her laughter is able to generate more energy than screams."),
	("2022-9-23", "About Us", "static", "public", 1,
		"Welcome to our blog about MOVIES!! Here you can explore summaries to reviews. An open space for your thoughts :)");
        
INSERT INTO content_tag (contentId, tagId) values 
	(1, 2), (1, 3), (1, 5), (1, 6),
    (2, 8), (2, 12), (2,13),
    (3, 1), (3, 3), (3, 4), (3, 12), (3, 15),
	(4, 1), (4, 2), (4, 3), (4, 5);
    
INSERT INTO comment (createDate, comment, userId, contentId) values 
	("2022-9-11", "So hyped for this movie!", 7, 3),
    ("2020-7-12", "Greatest of all time!", 6, 1),
    ("2020-7-13", "Lots of action!", 6, 2),
    ("2020-7-13", "Mike wazowski is the GOAT!", 7, 4);
        

UPDATE user SET password = '$2a$10$F2ERRQiGv0yK5wnUiHWdxeJYyS8q3s/gBEXgHg18GcJ.VHFeRoitC' WHERE id = 1;
UPDATE user SET password = '$2a$10$F2ERRQiGv0yK5wnUiHWdxeJYyS8q3s/gBEXgHg18GcJ.VHFeRoitC' WHERE id = 2;
UPDATE user SET password = '$2a$10$F2ERRQiGv0yK5wnUiHWdxeJYyS8q3s/gBEXgHg18GcJ.VHFeRoitC' WHERE id = 3;
UPDATE user SET password = '$2a$10$F2ERRQiGv0yK5wnUiHWdxeJYyS8q3s/gBEXgHg18GcJ.VHFeRoitC' WHERE id = 4;
UPDATE user SET password = '$2a$10$F2ERRQiGv0yK5wnUiHWdxeJYyS8q3s/gBEXgHg18GcJ.VHFeRoitC' WHERE id = 5;
UPDATE user SET password = '$2a$10$F2ERRQiGv0yK5wnUiHWdxeJYyS8q3s/gBEXgHg18GcJ.VHFeRoitC' WHERE id = 6;
        
        
UPDATE content SET titlePicture = "https://i1.wp.com/janksreviews.com/wp-content/uploads/2017/09/emoji-1.jpg" WHERE id = 1;
UPDATE content SET titlePicture = "https://images.indianexpress.com/2022/05/KGF2-1200by667.jpg" WHERE id = 2;
UPDATE content SET titlePicture = "https://eclecticgirl.files.wordpress.com/2014/02/hp-hallows-2-landscape.jpg" WHERE id = 3;
UPDATE content SET titlePicture = "https://m.media-amazon.com/images/M/MV5BMjE2MDU3MjI3Nl5BMl5BanBnXkFtZTcwODE2NDc3Mw@@._V1_.jpg" WHERE id = 4;
-- UPDATE content SET titlePicture = "https://i.ibb.co/7zDs3RN/best-gaming-pc-2020.jpg" WHERE id = 5;
-- UPDATE content SET titlePicture = "https://i.ibb.co/7zDs3RN/best-gaming-pc-2020.jpg" WHERE id = 6;
-- UPDATE content SET titlePicture = "https://i.ibb.co/7zDs3RN/best-gaming-pc-2020.jpg" WHERE id = 7;        

UPDATE content SET scheduleDate = "2022-9-23" WHERE id = 1;
UPDATE content SET scheduleDate = "2022-9-23" WHERE id = 2;
UPDATE content SET scheduleDate = "2022-9-23" WHERE id = 3;
UPDATE content SET scheduleDate = "2022-9-23" WHERE id = 4;
UPDATE content SET scheduleDate = "2022-9-23" WHERE id = 5;
UPDATE content SET scheduleDate = "2022-9-23" WHERE id = 6;
UPDATE content SET scheduleDate = "2022-9-23" WHERE id = 7;
        
        
        
        