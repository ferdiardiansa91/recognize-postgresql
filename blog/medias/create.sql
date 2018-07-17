CREATE TABLE IF NOT EXISTS medias (
	id BIGSERIAL PRIMARY KEY,
	name_file VARCHAR(255) NOT NULL,
	url TEXT NOT NULL,
	file_size INTEGER NOT NULL,
	file_width INTEGER NOT NULL,
	file_height INTEGER NOT NULL,
	meme_type CHAR(10) NOT NULL,
	updated_at TIMESTAMP WITH TIME ZONE,
	created_at TIMESTAMP WITH TIME ZONE
);