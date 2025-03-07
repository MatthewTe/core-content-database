\connect content_prod;
CREATE SCHEMA core;

CREATE TABLE IF NOT EXISTS core.source (
	id UUID PRIMARY KEY,
	type VARCHAR(255),
	created_date DATE,
	fields JSONB
);

CREATE TABLE IF NOT EXISTS core.content (
	id UUID PRIMARY KEY,
	source UUID,
	type VARCHAR(255),
	created_date DATE,
	storage_path VARCHAR(255), 
	fields JSONB,
	FOREIGN KEY (source) REFERENCES core.source(id)
);

CREATE TABLE IF NOT EXISTS core.extents (
	id UUID PRIMARY KEY,
	content UUID,
	geometry geometry,
	fields JSONB,
	FOREIGN KEY (content) REFERENCES core.content(id)
);