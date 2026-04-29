SET maintenance_work_mem = '16GB';
SET max_parallel_maintenance_workers = 16;
SET max_parallel_workers = 32;

CREATE INDEX ON tweet_tags (tag, id_tweets);
create index on tweet_tags (id_tweets, tag);
create index on tweets(id_tweets, lang);
create index on tweets(lang);
create index on tweets using gin(to_tsvector('english',text)) where lang = 'en';
