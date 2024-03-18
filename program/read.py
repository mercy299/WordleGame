# Open the file for reading 
with open('filename.txt', 'r') as file: 
    # Read the contents of the file line by line
    file_contents = file.read() 

    print(file_contents)