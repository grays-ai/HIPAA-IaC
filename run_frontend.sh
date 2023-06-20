#!/bin/bash

# Run the Docker container
docker run -d -p 3000:3000 --name chart-review-frontend \
  -e REACT_APP_API_PATH=https://dev.grays.ai \
  -e REACT_APP_WS_PATH=wss://dev.grays.ai \
  -e HOST=0.0.0.0 \
  848286615134.dkr.ecr.us-east-1.amazonaws.com/chart-review-ecr:frontend
