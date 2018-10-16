# construiuna imagen de docker

docker build -f francisjosue/orbis-training-docker .
# pushear tu images
docker login
# sned your crendentials
docker push francisjosue/orbis-training-docker:0.1.0
# tag a new version 
docke tag francisjosue/orbis-training-docker:0.1.0 francisjosue/orbis-training-docker:0.2.0

