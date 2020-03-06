-- Pregunta
-- ===========================================================================
-- 
-- Obtenga los cinco (5) valores más pequeños de la 3ra columna.
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
data = LOAD 'data.tsv' USING PigStorage()
    AS (
        letra:CHARARRAY,
        date:CHARARRAY,
        numero:INT
    );
x = FOREACH data GENERATE numero;
y = ORDER x BY numero;
a = LIMIT y 5;
STORE a INTO 'output';