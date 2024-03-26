import sys
from subprocess import Popen

env = {
    "TEST": "test",
}

proc = Popen(
    ["powershell.exe", "test.ps1"],
    universal_newlines=True,
    bufsize=0,
    shell=False,
    env=env,
)

proc.wait()
