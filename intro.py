import re 
with open('intro.py', 'r') as file: 
    content = file.read() 
modified_content = re.sub(r'model\s*=\s*load_model\([\'"]Brain_Tumor_Detection_1\.0[\'"]\)', 'model = load_model(\'Brain_Tumor_Detection_1.0\')', content) 
with open('intro.py', 'w') as file: 
    file.write(modified_content) 
