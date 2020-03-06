-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` Calcule la cantidad de registros por clave de la 
-- columna 3. En otras palabras, cuántos registros hay que tengan la clave 
-- `aaa`?
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
x = FOREACH data GENERATE FLATTEN(KEYSET(f3)) AS clave;
grouped = GROUP x BY clave;
counted = FOREACH grouped GENERATE group AS clave, COUNT(x) AS count;
STORE counted INTO 'output' USING PigStorage(',');