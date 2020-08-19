import json
import sys

def read(key):
    with open("install.json", "r") as f:
        data = json.loads(f.read())[key]
        if isinstance(data, list):
            print(" ".join(data))
        else:
            print(data)

if __name__ == "__main__":
    read(sys.argv[1])