DROP FUNCTION regexp_replace_rand(TEXT, TEXT, TEXT, TEXT, BOOL);
DROP FUNCTION regexp_replace_rand(TEXT, TEXT, TEXT, BOOL);
DROP FUNCTION regexp_replace_rand(TEXT[], TEXT, TEXT, BOOL);

CREATE OR REPLACE FUNCTION regexp_replace_rand(text_in TEXT, regexp_rule TEXT, regexp_result TEXT, regexp_opt TEXT, keep_empty BOOL = FALSE, vars jsonb = NULL)
RETURNS TEXT
AS '$libdir/yeti_pg_ext', 'regexp_replace_rand'
LANGUAGE C VOLATILE;

CREATE OR REPLACE FUNCTION regexp_replace_rand(text_in TEXT, regexp_rule TEXT, regexp_result TEXT, keep_empty BOOL = FALSE, vars jsonb = NULL)
RETURNS TEXT
AS '$libdir/yeti_pg_ext', 'regexp_replace_rand_noopt'
LANGUAGE C VOLATILE;

CREATE OR REPLACE FUNCTION regexp_replace_rand(text_in TEXT[], regexp_rule TEXT, regexp_result TEXT, keep_empty BOOL = FALSE, vars jsonb = NULL)
RETURNS TEXT[]
AS '$libdir/yeti_pg_ext', 'regexp_replace_rand_array_noopt'
LANGUAGE C VOLATILE;
