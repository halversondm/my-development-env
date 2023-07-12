# docker run -it -v ~/dev:/development --name my-dev-env-1-0-0 -p 3000:3000 halversondm/my-dev-env:1.0.0
#docker run -it -v ~/dev:/development --name my-dev-env-1-1-0 -p 3000:3000 halversondm/my-dev-env:1.1.0
docker run -it -v ~/dev:/development --name my-dev-env-1-2-0 -p 3000:3000 -p 3001:3001 -p 3002:3002 halversondm/my-dev-env:1.2.0