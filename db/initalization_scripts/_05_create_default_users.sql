GRANT ALL PRIVILEGES ON DATABASE content_dev TO reddit_content_dev ;
GRANT ALL PRIVILEGES ON DATABASE content_dev TO reddit_content_dev;
GRANT USAGE, CREATE ON SCHEMA core TO reddit_content_dev;
GRANT INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA core TO reddit_content_dev;

GRANT INSERT, UPDATE, DELETE ON ALL TABLES IN SCHEMA core TO reddit_content_dev;
GRANT USAGE, SELECT, UPDATE ON ALL SEQUENCES IN SCHEMA core TO reddit_content_dev;
GRANT USAGE, CREATE ON SCHEMA core TO reddit_content_dev ;
GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA core TO reddit_content_dev ;
GRANT ALL PRIVILEGES ON ALL SEQUENCES IN SCHEMA core TO reddit_content_dev ;
ALTER DEFAULT PRIVILEGES IN SCHEMA core GRANT ALL ON TABLES TO reddit_content_dev ;
ALTER DEFAULT PRIVILEGES IN SCHEMA core GRANT ALL ON SEQUENCES TO reddit_content_dev ;

GRANT CONNECT ON DATABASE content_prod TO reddit_content_prod_write;
GRANT USAGE ON SCHEMA core TO reddit_content_prod_write;

GRANT SELECT, INSERT, UPDATE ON core.source TO reddit_content_prod_write;
GRANT SELECT, INSERT, UPDATE ON core.content TO reddit_content_prod_write;
GRANT SELECT ON core.extents TO reddit_content_prod_write;
GRANT USAGE, SELECT ON ALL SEQUENCES IN SCHEMA core TO reddit_content_prod_write;