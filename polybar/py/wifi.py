import subprocess
output = subprocess.getoutput("nmcli -t -f NAME c show --active").split("\n")[0]
print(output)
