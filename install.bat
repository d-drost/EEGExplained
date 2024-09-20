@echo off
REM Usage: install.bat <env_name> <requirements.txt> <notebook.ipynb>

SET ENV_NAME=learning_eeg
SET REQUIREMENTS=requirements.txt
SET NOTEBOOK=EEGExplained.ipynb

REM Create a new Python virtual environment
echo Creating virtual environment: %ENV_NAME%
python -m venv %ENV_NAME%

REM Activate the virtual environment
echo Activating virtual environment...
CALL %ENV_NAME%\Scripts\activate

REM Install required packages
echo Installing packages from %REQUIREMENTS%
pip install -r %REQUIREMENTS%

REM Run Voila on the given notebook
echo Running Voila on %NOTEBOOK%
voila %NOTEBOOK%

REM Deactivate the virtual environment when done
CALL deactivate
