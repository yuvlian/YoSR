import json

input_file_path = r'C:\Users\Public\LingshaBeta\pbmaker\cmdid.json'
output_file_path = r'C:\Users\Public\LingshaBeta\gameserver\bin\cmdid.ml'

with open(input_file_path, 'r') as file:
    data = json.load(file)

with open(output_file_path, 'w') as output_file:
    for key, value in data.items():
        variable_name = value[0].lower() + value[1:]
        snake_case_name = ''.join(['_' + i.lower() if i.isupper() else i for i in variable_name])
        output_file.write(f"let {snake_case_name} = {key}\n")
