FROM alpine

LABEL org.opencontainers.image.authors = "Andrius Kairiukstis <k@andrius.mobi>"
LABEL org.opencontainers.image.source = "https://github.com/andrius/ruby-serverless"
LABEL org.opencontainers.image.description = "An alpine-based Docker environment equipped with Node.js, NPM, Ruby, Bundler, and the Serverless Framework for streamlined AWS Lambda function development and local testing."

ENV LANG C.UTF-8

RUN \
apk add \
	ca-certificates \
	less \
	libressl \
	npm \
	ruby \
	ruby-bigdecimal \
	ruby-bundler \
	ruby-etc \
	ruby-io-console \
	ruby-irb \
	nodejs

RUN npm install -g serverless
