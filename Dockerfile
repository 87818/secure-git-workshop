# syntax=docker/dockerfile:1

# VULNERABLE IMAGE ... ⚡⚡⚡ ☠️☠️☠️
FROM python:3.5-slim-buster

# HARDCODED SECRET ... ⚡⚡⚡ ☠️☠️☠️
ENV API_KEY="secure-password"

WORKDIR /app

# Adding all files ... 🙃🙃🙃 🕷🕷🕷
COPY . .

# Add only what we need 😂😂😂
# COPY ./requirements.txt requirements.txt

RUN python -m pip install --upgrade pip && \
    python -m pip install -r requirements.txt



CMD [ "python3", "get_wheather.py"]
