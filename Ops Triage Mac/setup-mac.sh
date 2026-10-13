#!/bin/bash

#Navigate to backend directory
cd "$(dirname "$0")/backend"

#Create and activate virtual environment with python
python3.12 -m venv .venv
source .venv/bin/activate

#Upgrade pip and install dependencies
python -m pip install --upgrade pip
pip install -r requirements-dev.txt

#Navigate to frontend directory
cd "$(dirname "$0")/frontend"

#Install frontend dependencies
npm install

echo ""
echo "Setup complete. Run ./start-mac.sh to launch OpsFlow."
