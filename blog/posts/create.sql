CREATE TABLE IF NOT EXISTS posts (
	id BIGSERIAL PRIMARY KEY,
	title VARCHAR(255),
	slug VARCHAR(255),
	content TEXT,
	category_id INTEGER NOT NULL REFERENCES categories (id),
	channel_id INTEGER NOT NULL REFERENCES channels (id),
	cover INTEGER NOT NULL REFERENCES medias (id),
	user_id INTEGER NOT NULL REFERENCES users (id),
	status INTEGER DEFAULT -1,
	is_premium INTEGER DEFAULT 0,
	updated_at TIMESTAMP WITH TIME ZONE,
	created_at TIMESTAMP WITH TIME ZONE
);