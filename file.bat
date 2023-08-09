@echo off
Set daysCounter=1
Set "model_name=model"

:x
echo %random% %random% >> tester.txt

REM Modify the Python file
echo import re >> intro.py.new
echo with open('intro.py', 'r') as file: >> intro.py.new
echo.    content = file.read() >> intro.py.new
echo modified_content = re.sub(r'model\s*=\s*load_model\([\'"]Brain_Tumor_Detection_1\.0[\'"]\)', '%model_name% = load_model(\'Brain_Tumor_Detection_1.0\')', content) >> intro.py.new
echo with open('intro.py', 'w') as file: >> intro.py.new
echo.    file.write(modified_content) >> intro.py.new
move /y intro.py.new intro.py

timeout 1
git add .
git commit --date="%daysCounter% days ago" -m "Files Landing"
git push
set /a daysCounter=(%random%*730/32768)

goto x
