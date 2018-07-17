CREATE TABLE IF NOT EXISTS tags (
	id BIGSERIAL PRIMARY KEY,
	tag_name VARCHAR(255) NOT NULL,
	tag_sluug VARCHAR(255) NOT NULL,
	created_at TIMESTAMP WITH TIME ZONE
);