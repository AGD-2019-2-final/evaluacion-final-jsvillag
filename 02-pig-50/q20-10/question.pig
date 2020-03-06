-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para responder la pregunta use el archivo `data.csv`.
-- 
-- Escriba el código equivalente a la siguiente consulta SQL.
-- 
--    SELECT
--        firstname,
--        color
--    FROM 
--        u 
--    WHERE 
--       color REGEX '^[^b]';
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;

data = LOAD 'data.csv' USING PigStorage(',')
    AS (
        id: INT,
        firstname: CHARARRAY,
        lastname: CHARARRAY,
        birthday: CHARARRAY,
        color: CHARARRAY,
        quantity: INT
    );
x = FOREACH data GENERATE $1, $4;
filtered = FILTER x BY (color MATCHES '^[^b].*');
STORE filtered INTO 'output' USING PigStorage(',');
