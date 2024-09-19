#!/bin/bash

# Usage: ./run_voila.sh <env_name> <requirements.txt> <notebook.ipynb>

ENV_NAME="learning_eeg"
REQUIREMENTS="requirements.txt"
NOTEBOOK="EEGExplained.ipynb"

# Create a new Python virtual environment
echo "Creating virtual environment: $ENV_NAME"
python3 -m venv $ENV_NAME

# Activate the virtual environment
echo "Activating virtual environment..."
source $ENV_NAME/bin/activate

# Install required packages
echo "Installing packages from $REQUIREMENTS"
pip install -r $REQUIREMENTS


# Run Voila on the given notebook
echo "Running Voila on $NOTEBOOK"
voila $NOTEBOOK

# Deactivate the virtual environment when done
deactivate
