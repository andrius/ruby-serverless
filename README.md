AWS Lambda Development Environment
==================================

<!-- vim-markdown-toc GFM -->

* [Overview](#overview)
* [Features](#features)
* [Getting Started](#getting-started)

<!-- vim-markdown-toc -->

## Overview

This repository houses a Docker environment tailored for local development and
testing of AWS Lambda functions. It includes Node.js with NPM, and Ruby with Bundler,
as well as the Serverless Framework (`sls` or `serverless`) binaries.

The Docker environment is constructed on an Alpine Linux base,
ensuring a lightweight and secure foundation for building and packaging your AWS Lambda code.

## Features

- **Node.js and NPM:** Run and manage Node.js applications and dependencies.
- **Ruby and Bundler:** Write and test Ruby scripts and manage Ruby gems.
- **Serverless Framework:** Simplify the deployment of AWS Lambda functions and event-driven systems.

## Getting Started

Follow these simple steps to get your local AWS Lambda development environment up and running:

1. Clone this repository to obtain the Docker configuration.
2. Build the Docker image from the root of the cloned repository:

   ```sh
   docker build -t ruby-serverless:latest .
   ```
