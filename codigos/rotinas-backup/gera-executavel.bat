start /wait virtualenv venv
CALL venv\Scripts\activate.bat
pip install -r requirements.txt
pyinstaller --onefile --noconsole main.py