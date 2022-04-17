CREATE TABLE "public.Votes" (
	"Id" serial NOT NULL,
	"PostId" serial NOT NULL,
	"VoteTypeId" serial NOT NULL,
	"CreationDate" serial NOT NULL,
	"UserId" serial NOT NULL,
	"BountyAmount" serial NOT NULL,
	CONSTRAINT "Votes_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.PostLinks" (
	"Id" serial NOT NULL,
	"CreationDate" serial NOT NULL,
	"PostId" serial NOT NULL,
	"RelatedPostId" serial NOT NULL,
	"LinkTypeId" serial NOT NULL,
	CONSTRAINT "PostLinks_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Comments" (
	"Id" serial NOT NULL,
	"PostId" serial NOT NULL,
	"Score" serial NOT NULL,
	"Text" serial NOT NULL,
	"CreationDate" serial NOT NULL,
	CONSTRAINT "Comments_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.PostHistory" (
	"Id" serial NOT NULL,
	"PostHistoryTypeId" serial NOT NULL,
	"PostId" serial NOT NULL,
	"RevisionGUID" serial NOT NULL,
	"CreationDate" serial NOT NULL,
	"Comment" serial NOT NULL,
	"Text" serial NOT NULL,
	"CloseReasonId" serial NOT NULL,
	"ContentLicense" varchar(255) NOT NULL,
	CONSTRAINT "PostHistory_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Posts" (
	"Id" serial NOT NULL,
	"PostTyped" serial NOT NULL,
	"ParentId" serial NOT NULL,
	"AcceptedAnswerId" serial NOT NULL,
	"CreationDate" serial NOT NULL,
	"Score" serial NOT NULL,
	"ViewCount" serial NOT NULL,
	"Body" serial NOT NULL,
	"LastEditDate" serial NOT NULL,
	"LastActivityDate" serial NOT NULL,
	"CommunityOwnedDate" serial NOT NULL,
	"ClosedDate" serial NOT NULL,
	"Title" serial NOT NULL,
	"Tags" serial NOT NULL,
	"AnswerCount" serial NOT NULL,
	"CommentCount" serial NOT NULL,
	"FavoriteCount" serial NOT NULL,
	"ProjectId" serial NOT NULL,
	"ContentLicense" varchar NOT NULL,
	CONSTRAINT "Posts_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Projects" (
	"Id" serial NOT NULL,
	"Name" serial NOT NULL,
	"ProjectTypeId" serial NOT NULL,
	"LanguageId" serial NOT NULL,
	CONSTRAINT "Projects_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.ProjectTypes" (
	"Id" serial NOT NULL,
	"Name" serial NOT NULL,
	CONSTRAINT "ProjectTypes_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Languages" (
	"Id" serial NOT NULL,
	"Name" serial NOT NULL,
	CONSTRAINT "Languages_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Tags" (
	"Id" int NOT NULL,
	"TagName" varchar(255) NOT NULL,
	"Count" int(255) NOT NULL,
	"ExcerptPostId" int NOT NULL,
	"WikiPostId" int NOT NULL,
	CONSTRAINT "Tags_pk" PRIMARY KEY ("Id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.PostTags" (
	"PostId" serial NOT NULL,
	"TagId" serial NOT NULL,
	CONSTRAINT "PostTags_pk" PRIMARY KEY ("PostId")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Votes" ADD CONSTRAINT "Votes_fk0" FOREIGN KEY ("PostId") REFERENCES "Posts"("Id");
ALTER TABLE "Votes" ADD CONSTRAINT "Votes_fk1" FOREIGN KEY ("UserId") REFERENCES "Users"("Id");

ALTER TABLE "PostLinks" ADD CONSTRAINT "PostLinks_fk0" FOREIGN KEY ("PostId") REFERENCES "Posts"("Id");
ALTER TABLE "PostLinks" ADD CONSTRAINT "PostLinks_fk1" FOREIGN KEY ("RelatedPostId") REFERENCES "Posts"("Id");

ALTER TABLE "Comments" ADD CONSTRAINT "Comments_fk0" FOREIGN KEY ("PostId") REFERENCES "Posts"("Id");

ALTER TABLE "PostHistory" ADD CONSTRAINT "PostHistory_fk0" FOREIGN KEY ("PostId") REFERENCES "Posts"("Id");


ALTER TABLE "Projects" ADD CONSTRAINT "Projects_fk0" FOREIGN KEY ("Id") REFERENCES "Posts"("ProjectId");

ALTER TABLE "ProjectTypes" ADD CONSTRAINT "ProjectTypes_fk0" FOREIGN KEY ("Id") REFERENCES "Projects"("ProjectTypeId");

ALTER TABLE "Languages" ADD CONSTRAINT "Languages_fk0" FOREIGN KEY ("Id") REFERENCES "Projects"("LanguageId");

ALTER TABLE "Tags" ADD CONSTRAINT "Tags_fk0" FOREIGN KEY ("Id") REFERENCES "PostTags"("TagId");

ALTER TABLE "PostTags" ADD CONSTRAINT "PostTags_fk0" FOREIGN KEY ("PostId") REFERENCES "Posts"("Id");











