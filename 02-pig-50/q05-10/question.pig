-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute Calcule la cantidad de registros en que 
-- aparece cada letra minúscula en la columna 2.
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
x = FOREACH data GENERATE FLATTEN(f2) AS letra;
grouped = GROUP x BY letra;
counted = FOREACH grouped GENERATE group AS letra, COUNT(x) AS count;
STORE counted INTO 'output';