@echo off

SET ENV_NAME=learning_eeg
SET NOTEBOOK=EEGExplained.ipynb

REM Run Voila on the given notebook
echo Running Voila on %NOTEBOOK%
voila %NOTEBOOK%

REM Deactivate the virtual environment when done
CALL deactivate