#Solicitar archivo 

echo "Introduce un archivo: "
read archivo

#Leemos linea a linea y las vamos escribiendo en sus respectivos archivos según el nombre del género musical

while IFS=',' read -r nombre artista genero; do
echo "$nombre|$artista|$genero" >> $genero.txt
done < $archivo
