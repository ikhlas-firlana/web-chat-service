
include .env-local
export

APP=chat-service


all: build

build:
	npm start
