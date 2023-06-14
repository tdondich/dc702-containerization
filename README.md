
## Example of using Docker to launch interative shells and tools

```
# Run an interactive ubuntu shell
docker run -it --rm ubuntu

# Run a python script without installing python locally
docker run --rm -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3 python hello.py

# Run an interactive PHP shell for latest
docker run -it --rm php:latest

# Run an interactive PHP shell for older version
docker run -it --rm php:5.6.14

# Run nulcei against a target
docker run --rm projectdiscovery/nuclei -t ssl -target dh480.badssl.com

```

# Build a custom container (nmap)
```
docker build -t nmap -f ./nmap.Dockerfile
```