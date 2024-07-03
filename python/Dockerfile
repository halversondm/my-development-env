# set base image (host OS)
FROM python:3

RUN apt-get update && apt-get install -y \
    vim \
    && apt-get clean

RUN useradd -U -p p@ssword1 -ms /bin/bash devuser

USER devuser:devuser

# set the working directory in the container
WORKDIR /home/devuser

ENV PATH="/home/devuser/.local/bin:$PATH"

# install dependencies for poetry and pipx
RUN python3 -m pip install --user pipx flask && python3 -m pipx ensurepath && python3 -m pipx install poetry

# copy the content of the local src directory to the working directory
ADD --chown=devuser:devuser src/server.py server.py
ADD --chown=devuser:devuser src/bashrc .bashrc

# command to run on container start
CMD [ "flask", "--app", "server", "run", "--host=0.0.0.0" ]