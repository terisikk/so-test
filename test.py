from subprocess import Popen

env = {
    "TEST": "test",
}

proc = Popen(
    "Get-ChildItem Env: | Sort Name | Out-File -FilePath env.txt",
    universal_newlines=True,
    bufsize=0,
    shell=False,
    env=env,
)

proc.wait()
