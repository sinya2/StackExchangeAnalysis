
-- Posts
CREATE TABLE posts (
	id SERIAL PRIMARY KEY,
	post_type_id SMALLINT NOT NULL,
	accepted_answer_id INTEGER,
	score INTEGER NOT NULL,
	parent_id INTEGER,
	view_count INTEGER,
	answer_count INTEGER DEFAULT 0,
	comment_count INTEGER DEFAULT 0,
	title VARCHAR(512),
	tags VARCHAR(512),
	content_license VARCHAR(64) NOT NULL,
	body TEXT,
	favorite_count INTEGER,
	creation_date TIMESTAMP NOT NULL,
	community_owned_date TIMESTAMP,
	closed_date TIMESTAMP,
	last_edit_date TIMESTAMP,
	last_activity_date TIMESTAMP,
	project_id INTEGER
);

-- Projects
CREATE TABLE projects (
	id SERIAL PRIMARY KEY,
	language VARCHAR(255) NOT NULL,
	name VARCHAR(255) NOT NULL,
	project_type_id INTEGER
);

-- Comments
CREATE TABLE comments (
	id SERIAL PRIMARY KEY,
	post_id INTEGER NOT NULL,
	score SMALLINT NOT NULL,
	text TEXT,
	creation_date TIMESTAMP NOT NULL
);


-- Votes
CREATE TABLE tags (
	id SERIAL PRIMARY KEY,
	post_id INTEGER,
	vote_type_id INTEGER,
	creation_date TIMESTAMP NOT NULL,
	bounty_amount INTEGER 
);

ALTER TABLE IF EXISTS public.posts
    ADD CONSTRAINT posts_ru_pkey PRIMARY KEY ("Id", "ProjectId");










