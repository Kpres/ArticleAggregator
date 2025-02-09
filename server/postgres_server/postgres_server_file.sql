CREATE TABLE person
(
    person_id INTEGER NOT NULL,
    name VARCHAR NOT NULL,
    email VARCHAR NOT NULL,
    PRIMARY KEY(person_id)
);
CREATE TABLE article
(
    article_id INTEGER NOT NULL,
    author VARCHAR NOT NULL,
    url VARCHAR NOT NULL,
    article_title INTEGER NOT NULL,
    PRIMARY KEY(article_id)
);
CREATE TABLE likes
(
    person_id INTEGER NOT NULL,
    article_id INTEGER NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person(person_id),
    FOREIGN KEY (article_id) REFERENCES person(article_id),
    PRIMARY KEY(person_id, article_id)
);
CREATE TABLE dislikes
(
    person_id INTEGER NOT NULL,
    article_id INTEGER NOT NULL,
    FOREIGN KEY (person_id) REFERENCES person(person_id),
    FOREIGN KEY (article_id) REFERENCES person(article_id),
    PRIMARY KEY(person_id, article_id)
);
CREATE TABLE recommendations
(
    person_id INTEGER NOT NULL,
    article_id INTEGER NOT NULL,
    recommended_date VARCHAR NOT NULL, 
    FOREIGN KEY (person_id) REFERENCES person(person_id),
    FOREIGN KEY (article_id) REFERENCES person(article_id),
    PRIMARY KEY(person_id, article_id) -- Cannot duplicate recommendations
);

INSERT INTO person (person_id) VALUES (1, 'Karthik Suresh', 'thiccness@gmail.com');
INSERT INTO person (person_id) VALUES (2, 'Kevin Presing', 'asians@gmail.com');
INSERT INTO person (person_id) VALUES (3, 'Billy Pedoto', 'italians@gmail.com');
INSERT INTO person (person_id) VALUES (4, 'Paul Scalia', 'glassmakers@gmail.com');
INSERT INTO person (person_id) VALUES (5, 'Brooks Wallace', 'tallpeople@gmail.com');

INSERT INTO article(article_id) VALUES (1, 'CNN', 'https://www-m.cnn.com/2019/10/10/football/sofia-huerta-tigres-houston-dash-spt-intl/index.html?r=https%3A%2F%2Fwww.cnn.com%2Farticles', 'Football fan faces lifetime ban for allegedly groping female player');
INSERT INTO article (article_id) VALUES(2,'CNN', 'https://www.cnn.com/2019/03/08/tech/emergency-alert-netflix-hulu-streaming/index.html' ,'Should Netflix and Hulu give you emergency alerts?');
INSERT INTO article (article_id) VALUES(3, 'CNN', 'https://www.cnn.com/us/live-news/pge-power-outage-california/index.html' ,'PG&E power outage in California');
INSERT INTO article (article_id) VALUES(4,'NYT', 'https://www.nytimes.com/2019/10/09/us/anchorage-murder-sd-card-video.html' ,'Memory Card Found With Brutal Videos and Photos Leads to Murder Arrest');
INSERT INTO article (article_id) VALUES(5,'NYT', 'https://www.nytimes.com/2019/10/09/us/labor-unions-alaska.html' ,'Already Under Siege, Labor Unions Face a New Threat From Alaska');
INSERT INTO article (article_id) VALUES(6,'NYT', 'https://www.nytimes.com/2019/10/09/us/montgomery-alabama-mayor-steven-reed.html' ,'Montgomery, a Cradle of Civil Rights, Elects Its First Black Mayor');
INSERT INTO article (article_id) VALUES(7,'NYT', 'https://www.nytimes.com/2019/10/08/us/parkland-shooting-victims-cyber-stalker.html' ,'California Man Is Convicted of Cyberstalking Parkland Victims’ Families');
INSERT INTO article (article_id) VALUES(8,'FOX', 'https://www.foxnews.com/us/alaska-man-memory-card-killing-woman' ,'Alaska murder mystery twist: Memory card found along road shows man assaulting and killing woman, cops say');
INSERT INTO article (article_id) VALUES(9,'FOX', 'https://www.foxnews.com/entertainment/matt-lauer-annette-roque-statement-on-new-rape-allegation' ,'Matt Lauers ex-wife Annette Roque releases statement amid new rape accusation');

INSERT INTO likes (person_id, article_id) VALUES (1, 1);
INSERT INTO likes (person_id, article_id) VALUES (1, 3);
INSERT INTO likes (person_id, article_id) VALUES (1, 5);
INSERT INTO likes (person_id, article_id) VALUES (1, 9);
INSERT INTO likes (person_id, article_id) VALUES (2, 1);
INSERT INTO likes (person_id, article_id) VALUES (2, 2);
INSERT INTO likes (person_id, article_id) VALUES (2, 3);
INSERT INTO likes (person_id, article_id) VALUES (3, 4);
INSERT INTO likes (person_id, article_id) VALUES (3, 5);
INSERT INTO likes (person_id, article_id) VALUES (3, 6);
INSERT INTO likes (person_id, article_id) VALUES (4, 2);
INSERT INTO likes (person_id, article_id) VALUES (4, 4);
INSERT INTO likes (person_id, article_id) VALUES (4, 6);
INSERT INTO likes (person_id, article_id) VALUES (4, 8);
INSERT INTO likes (person_id, article_id) VALUES (4, 9);
INSERT INTO likes (person_id, article_id) VALUES (5, 8);
INSERT INTO likes (person_id, article_id) VALUES (5, 9);
INSERT INTO likes (person_id, article_id) VALUES (5, 1);
INSERT INTO likes (person_id, article_id) VALUES (5, 3);

INSERT INTO dislikes (person_id, article_id) VALUES (1, 2);
INSERT INTO dislikes (person_id, article_id) VALUES (1, 4);
INSERT INTO dislikes (person_id, article_id) VALUES (1, 6);
INSERT INTO dislikes (person_id, article_id) VALUES (1, 7);
INSERT INTO dislikes (person_id, article_id) VALUES (1, 8);
INSERT INTO dislikes (person_id, article_id) VALUES (2, 4);
INSERT INTO dislikes (person_id, article_id) VALUES (2, 5);
INSERT INTO dislikes (person_id, article_id) VALUES (2, 6);
INSERT INTO dislikes (person_id, article_id) VALUES (2, 7);
INSERT INTO dislikes (person_id, article_id) VALUES (2, 8);
INSERT INTO dislikes (person_id, article_id) VALUES (2, 9);
INSERT INTO dislikes (person_id, article_id) VALUES (3, 1);
INSERT INTO dislikes (person_id, article_id) VALUES (3, 2);
INSERT INTO dislikes (person_id, article_id) VALUES (3, 3);
INSERT INTO dislikes (person_id, article_id) VALUES (3, 7);
INSERT INTO dislikes (person_id, article_id) VALUES (3, 8);
INSERT INTO dislikes (person_id, article_id) VALUES (3, 9);
INSERT INTO dislikes (person_id, article_id) VALUES (4, 1);
INSERT INTO dislikes (person_id, article_id) VALUES (4, 5);
INSERT INTO dislikes (person_id, article_id) VALUES (4, 7);
INSERT INTO dislikes (person_id, article_id) VALUES (5, 2);
INSERT INTO dislikes (person_id, article_id) VALUES (5, 4);
INSERT INTO dislikes (person_id, article_id) VALUES (5, 5);
INSERT INTO dislikes (person_id, article_id) VALUES (5, 6);
INSERT INTO dislikes (person_id, article_id) VALUES (5, 7);
