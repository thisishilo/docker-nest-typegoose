#!/usr/bin/env bash

if [ "$1" = "rebuild" ]; then
    API_PORT=3100 docker-compose build
fi

if [ "$1" = "nest" ]; then
    docker build --tag=docker-nest-typegoose_nest -f ./Dockerfile .
fi

API_PORT=3100 docker-compose up -d nest
