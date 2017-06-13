# Shutil: Automate copying / moving / removing directories

# 1. shutil.copy(src, dest)
# - Equivalent: cp src dst (Unix)
# - Copy source file to destination directory
# - If file name exists, overwritten
# - Permissions kept, modification time updated

import shutil
import os
source = os.listdir("/tmp/")
destination = "/tmp/newfolder/"
for files in source:
    if files.endswith(".txt"):
        shutil.copy(files, destination)

# 2. shutil.copyfile(src, dest)
# - Copy data from src to destination
# - Both names must be files
# - Copy files by name

shutil.copyfile('path/to/file', '/path/to/other/phile')

# 3. copytree(src, dest)
# - Recursively copy directory tree rooated at src to destination
# - Destination must not already exist
# - Errors reported to standard output

shutil,copytree("samples", "samples-backup")
print(os.listdir("samples-backup"))

# 4. rmtree(path)
# - Recursively deletes a directory tree

shutil.rmtree("one/two/three")
