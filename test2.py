import os

with open("env.txt", "w") as f:
    f.write(str(os.environ))
