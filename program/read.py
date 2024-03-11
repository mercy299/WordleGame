import sys

def read_file(file_path):
    try:
        with open(file_path, 'r') as file:
            file_lines = file.readlines()
            for line in file_lines:
                if 'pending' in line.lower():
                    print("Applying migrations ...")
                else:
                    print("Skipping migrations")
    except FileNotFoundError as e:
        print(e)

def main():
    if len(sys.argv) != 2:
        print("Usage: python read.py <file_path>")
        sys.exit(1)
    file_path = sys.argv[1]
    read_file(file_path)


main()