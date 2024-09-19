#!/bin/bash

ENV_NAME="learning_eeg"
NOTEBOOK="EEGExplained.ipynb"

echo "Activating virtual environment..."
source $ENV_NAME/bin/activate

# Run Voila on the given notebook
echo "Running Voila on $NOTEBOOK"
voila $NOTEBOOK

# Deactivate the virtual environment when done
deactivate
