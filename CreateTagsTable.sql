
create table Tags as(
SELECT t1.* FROM 	
	(SELECT posts."Id",copy_posts."ViewCount",posts."Title",posts."CreationDate", 
		posts."ProjectId", lists."SplitTags"
	FROM posts 
	LEFT JOIN 
		(SELECT "Id","ProjectId",regexp_split_to_table(trim( t,'<>'), '><') as "SplitTags"
				FROM (
						SELECT "Id","ProjectId","Tags" as t
						FROM posts 
					) as tags
		  ) as lists
	ON 	
		posts."Id" = lists."Id"
		AND posts."ProjectId" = lists."ProjectId") as t1 
	);
