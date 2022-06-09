VERSION_MAJOR=11
VERSION_MINOR=11-7

podman login quay.io

podman build -f ./Containerfile.openjdk -t dev.local/jstakun/crda-openjdk:$VERSION_MAJOR --squash
podman tag dev.local/jstakun/crda-openjdk:11 quay.io/jstakun/crda-openjdk:$VERSION_MINOR
podman tag dev.local/jstakun/crda-openjdk:11 quay.io/jstakun/crda-openjdk:$VERSION_MAJOR

podman push quay.io/jstakun/crda-openjdk:$VERSION_MINOR
podman push quay.io/jstakun/crda-openjdk:$VERSION_MAJOR

