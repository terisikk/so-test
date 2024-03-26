import sys
from subprocess import Popen

env = {
    "TEST": "test",
}

proc = Popen(
    ["powershell.exe", "Get-ChildItem", "Env:", "|", "Sort", "Name", "|", "Out-File", "-FilePath", "env.txt"],
    universal_newlines=True,
    bufsize=0,
    shell=False,
    env=env,
    stdout=sys.stdout,
)

proc.wait()
