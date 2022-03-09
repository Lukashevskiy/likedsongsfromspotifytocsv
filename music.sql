

create table if not exists `favorite_music`(
	`id` int unsigned not null auto_increment,
	`album_name` varchar(255) default null,
	`album_type` enum('album', 'single'),
	`realese_date` date default null,
	`href` varchar(455) default null,
	`authors` varchar(255) default null,
	`duration` int default 0,
	`track_name` varchar(255) default null,
    PRIMARY KEY(id)
);

INSERT INTO favorite_music (album_name, album_type, realese_date, href, authors, duration, track_name) VALUES
('DECADANCE 3', 'album', '2020-03-13', 'https://api.spotify.com/v1/albums/6el2W4Q8CE09HDiCQbmzwc', 'Куок, WHY, BERRY, SODA LUV', 234000, 'БУДКА'),
('GlitchGang', 'album', '2021-04-06', 'https://api.spotify.com/v1/albums/3aCmgbuJABpDD03b4ixC5B', 'Dropout Kings', 144818, 'GlitchGang'),
('Major Arcana', 'album', '2013-07-09', 'https://api.spotify.com/v1/albums/6OVDwl01HgqVanC4jYjTwA', 'Speedy Ortiz', 155386, 'Hitch'),
('UNDERATED 2', 'album', '2019-09-27', 'https://api.spotify.com/v1/albums/4V4OUH7p1zrCgrkDQIE6CI', 'REDO, KOMMO', 189288, 'DANTE'),
('МОЯ МИЛАЯ ПУСТОТА', 'album', '2019-08-16', 'https://api.spotify.com/v1/albums/1tmh2HnfvTE5806wxgS0DA', 'pyrokinesis', 183433, 'Сигаретка без кнопки'),
('ДЕПРЕССИИ НЕ СУЩЕСТВУЕТ', 'album', '2019-02-22', 'https://api.spotify.com/v1/albums/5vrqKL7MOOnDpXPlDQCvDo', 'STED.D', 112000, 'я убью тебя'),
('ДЕПРЕССИИ НЕ СУЩЕСТВУЕТ', 'album', '2019-02-22', 'https://api.spotify.com/v1/albums/5vrqKL7MOOnDpXPlDQCvDo', 'STED.D', 156000, 'призраки'),
('ДЕПРЕССИИ НЕ СУЩЕСТВУЕТ', 'album', '2019-02-22', 'https://api.spotify.com/v1/albums/5vrqKL7MOOnDpXPlDQCvDo', 'STED.D', 164571, 'не знаю, где мы'),
('ДЕПРЕССИИ НЕ СУЩЕСТВУЕТ', 'album', '2019-02-22', 'https://api.spotify.com/v1/albums/5vrqKL7MOOnDpXPlDQCvDo', 'STED.D, ЕГОР НАТС', 204444, 'мы не навсегда'),
('ДЕПРЕССИИ НЕ СУЩЕСТВУЕТ', 'album', '2019-02-22', 'https://api.spotify.com/v1/albums/5vrqKL7MOOnDpXPlDQCvDo', 'STED.D', 162857, 'жатва'),
('ЦИКЛ', 'album', '2017-04-17', 'https://api.spotify.com/v1/albums/5Pwk5CG6YTaBqlevBsonUE', 'STED.D', 165829, 'Чтоб ты сдох'),
('ПОВЕСТКА', 'album', '2017-11-08', 'https://api.spotify.com/v1/albums/6PFM0YiBOp8gDw82QbRvNL', 'Loqiemean', 120196, 'Королева'),
('Хватит мне звонить', 'single', '2019-09-06', 'https://api.spotify.com/v1/albums/6FsS5q3k7wxWsvJ07bvzHc', 'STED.D', 192000, 'Хватит мне звонить');

