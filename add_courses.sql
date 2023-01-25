-- Adding Users

insert into users (
	name,
	email,
	"password",
	age
) values (
	'Saulo Román Santillán Nava',
	'romansantillan@outlook.com',
	'password1',
	24
);

-- Adding Categories

insert into categories (
	name
) values (
	'ciencia'
);

-- Adding Courses

insert into courses (
	title,
	description,
	level,
	teacher,
	categories_id 
) values (
	'Pasteles y postres',
	'La cocina nunca pudo ser mas facil que con este curso',
	'A',
	'Hilma Torre',
	2
);

-- Adding Video Courses

insert into course_videos  (
	title,
	url,
	courses_id 
) values (
	'Tres leches',
	'https://pastelesypostres-course-3.com',
	3
);

-- Adding Users Courses

insert into users_courses (
	users_id,
	courses_id 
) values (
	4,
	2
);


