
-- Posts
CREATE TABLE posts (
	"Id" INTEGER NOT NULL,
	"PostTypeId" SMALLINT NOT NULL,
	"AcceptedAnswerId" INTEGER,
	"Score" INTEGER NOT NULL,
	"ParentId" INTEGER,
	"ViewCount" INTEGER,
	"AnswerCount" INTEGER DEFAULT 0,
	"CommentCount" INTEGER DEFAULT 0,
	"Title" VARCHAR(512),
	"Tags" VARCHAR(512),
	"ContentLicense" VARCHAR(64) NOT NULL,
	"Body" TEXT,
	"FavoriteCount" INTEGER,
	"CreationDate" TIMESTAMP NOT NULL,
	"CommunityOwnedDate" TIMESTAMP,
	"ClosedDate" TIMESTAMP,
	"LastEditDate" TIMESTAMP,
	"LastActivityDate" TIMESTAMP,
	"ProjectId" INTEGER NOT NULL,
	CONSTRAINT posts_ru_pkey PRIMARY KEY ("Id","ProjectId")
);


-- Comments
CREATE TABLE comments (
	"Id" INTEGER NOT NULL,
	"PostId" INTEGER NOT NULL,
	"Score" SMALLINT NOT NULL,
	"ContentLicense" VARCHAR(64) NOT NULL,
	"Text" TEXT,
	"CreationDate" TIMESTAMP NOT NULL,
	"ProjectId" INTEGER NOT NULL,
	CONSTRAINT comments_ru_pkey PRIMARY KEY ("Id","ProjectId")
);

-- Votes
CREATE TABLE votes (
	"Id" INTEGER NOT NULL,
	"PostId" SMALLINT NOT NULL,
	"VoteTypeId" SMALLINT NOT NULL,
	"BountyAmount" SMALLINT,
	"CreationDate" TIMESTAMP NOT NULL,
	"ProjectId" INTEGER NOT NULL,
	CONSTRAINT votes_ru_pkey PRIMARY KEY ("Id","ProjectId")
);


-- Projects
CREATE TABLE projects (
	"Id" INTEGER NOT NULL PRIMARY KEY,
	"Language" VARCHAR(64) NOT NULL,
	"Name" VARCHAR(64) NOT NULL,
	"ProjectTypeId" INTEGER,
	"PublicationDate" DATE NOT NULL
);