rm *.csv
if [[ ! -f datos_abiertos_covid19.zip ]]
then
	curl -O http://datosabiertos.salud.gob.mx/gobmx/salud/datos_abiertos/datos_abiertos_covid19.zip
	unzip  datos_abiertos_covid19.zip
	csvcut  -c EMBARAZO,ENTIDAD_UM,SEXO,FECHA_DEF,EDAD,CLASIFICACION_FINAL  COVID19MEXICO.csv  | csvgrep -c EMBARAZO -m "1"|  csvgrep -c ENTIDAD_UM -m "26"| csvgrep -c SEXO -m "1"| csvgrep -c CLASIFICACION_FINAL -m "1" > covid_size_reduction.csv
	find * -type f -name '*.zip' -o -name '*.txt' | xargs rm;
fi

