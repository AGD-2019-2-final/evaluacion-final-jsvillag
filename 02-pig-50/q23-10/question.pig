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
--        color REGEXP '[aeiou]$';
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
-- 
data = LOAD 'data.csv' USING PigStorage(',')
    AS (
        id: INT,
        firstname: CHARARRAY,
        lastname: CHARARRAY,
        birthday: CHARARRAY,
        color: CHARARRAY,
        quantity: INT
    );
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

x = FOREACH data GENERATE $1, $4;
filtered = FILTER x BY (color MATCHES '.*[aeiou]$');
STORE filtered INTO 'output' USING PigStorage(',');