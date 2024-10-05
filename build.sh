# build and puch to docker hub

docker build  -t chubhippov3 . 
docker tag chubhippov3 younesmakhchan/chubhippo:v3

docker login

docker push younesmakhchan/chubhippo:v3

# now go to azure and update the image