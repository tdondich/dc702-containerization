
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

# Build a custom container (nmap) and run it
```
docker build -t nmap -f ./nmap.Dockerfile

docker run --rm nmap -A -T4 scanme.nmap.org
```

# Launch example vulnerable web applications
```
docker compose up
```

# Launch attack tools through docker compose
```
docker compose run nuclei wordpress

docker compose run zap http://wordpress

docker compose run wpscan http://wordpress/wp-admin/

docker compose run sqlmap http://wordpress
```