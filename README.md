# construiuna imagen de docker

docker build -f francisjosue/orbis-training-docker .
# pushear tu images
docker login
# sned your crendentials
docker push francisjosue/orbis-training-docker:0.1.0
# tag a new version 
docke tag francisjosue/orbis-training-docker:0.1.0 francisjosue/orbis-training-docker:0.2.0
# En el archivo README.md, agregar el comando que usaste en este paso.
docker run --rm -p 1080:80 francisjosue/orbis-training-docker:1.2.0
# Para correr un contendor con y levantar el servidor de npm
docker run -it --rm -w /app -v $PWD:/app -p 3030:3030 francisjosue/orbis-training-docker:3.0.0 npm start

# modificar el puerto a 1042
vim package.json 
# levantar un nuevo contenedor
docker run -it --rm -w /app -v $PWD:/app -p 3030:1042 francisjosue/orbis-training-docker:3.0.0 npm start
# ejecutar npm run release 
 docker run -it --rm -w /app -v $PWD:/app -p 3030:1042 francisjosue/orbis-training-docker:3.0.0 npm run release

