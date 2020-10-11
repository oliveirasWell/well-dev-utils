import os
import sys
from string import Template 

def main():
    print(sys.argv[0])
    print(sys.argv[1])

    main_dir = sys.argv[1] if len(sys.argv) >= 1 else '.'  

    print(main_dir)

    s = Template('$parent$child')

    actual_directory = next(os.walk(main_dir))[1]
    for directory in actual_directory:
        
        resolved_directory = s.substitute(parent=main_dir, child=directory,)

        print(resolved_directory)
        os.chdir(resolved_directory)
        os.system("cp ../V855__script.sql V855__script.sql")
        os.chdir("..")


if __name__ == "__main__":
    main();
