import sys
from subprocess import Popen

env = {
    "TEST": "test",
}

proc = Popen(
    "env",
    universal_newlines=True,
    bufsize=0,
    shell=False,
    env=env,
)

proc.wait()
