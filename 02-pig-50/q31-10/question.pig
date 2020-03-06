-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para responder la pregunta use el archivo `data.csv`.
-- 
-- Cuente la cantidad de personas nacidas por año.
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
selected = FOREACH data GENERATE ToString(ToDate(birthday, 'yyyy-MM-dd'), 'yyyy') AS year;
grouped = GROUP selected BY year;
counted = FOREACH grouped GENERATE group, COUNT(selected) AS count;
STORE counted INTO 'output' USING PigStorage(',');
