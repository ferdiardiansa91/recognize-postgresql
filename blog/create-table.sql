BEGIN;
	-- category table
	\i 'categories/create.sql';

	-- channels table
	\i 'channels/create.sql';
	
	-- tags table
	\i 'tags/create.sql';

	-- medias table
	\i 'medias/create.sql';

	-- users table
	\i 'users/create.sql';

	-- posts table
	\i 'posts/create.sql';

	-- post_tag table
	\i 'post_tags/create.sql';

	-- log views table
	\i 'post_views/create.sql';

COMMIT;
