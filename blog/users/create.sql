CREATE TABLE IF NOT EXISTS "users" (
	id BIGSERIAL PRIMARY KEY,
	username VARCHAR(255),
	slug VARCHAR(255),
	email VARCHAR(255),
	password VARCHAR(255),
	biography TEXT,
	media_id INTEGER REFERENCES medias (id),
	is_active INTEGER DEFAULT 0,
	is_premium INTEGER DEFAULT 0,
	updated_at TIMESTAMP WITH TIME ZONE,
	created_at TIMESTAMP WITH TIME ZONE
);