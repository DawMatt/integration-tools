# Instructions from:
# https://www.npmjs.com/package/tech-radar-generator
# https://github.com/dprgarner/tech-radar-generator

# Note: radar.json in current folder is embedded in the image

export version=`git rev-parse HEAD`
docker build --tag spectralbulk:latest --tag spectralbulk:$version -f Dockerfile.spectralbulk --tag spectralbulk .

docker image tag spectralbulk dawmatt/spectralbulk:latest
docker image tag spectralbulk dawmatt/spectralbulk:$version 

docker image push --all-tags dawmatt/spectralbulk

echo From source folder, run using 'docker run -v "$(pwd)":/src -it spectralbulk'
