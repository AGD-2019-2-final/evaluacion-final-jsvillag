-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra de la 
-- columna 2 y clave de al columna 3; esto es, por ejemplo, la cantidad de 
-- registros en tienen la letra `b` en la columna 2 y la clave `jjj` en la 
-- columna 3 es:
-- 
--   ((b,jjj), 216)
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
data = LOAD 'data.tsv' USING PigStorage()
    AS (
        f1:CHARARRAY, 
        f2:BAG{t: TUPLE(p:CHARARRAY)}, 
        f3:MAP[]
    );
x = FOREACH data GENERATE FLATTEN(f2) AS y1, FLATTEN(KEYSET(f3)) AS y2;
grouped = GROUP x BY (y1, y2);
counted = FOREACH grouped GENERATE group, COUNT(x) AS count;
STORE counted INTO 'output' USING PigStorage();