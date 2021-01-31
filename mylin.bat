@echo off
vboxmanage list runningvms | find /i "mylin"
if %errorlevel% == 1 (
  vboxmanage startvm mylin --type headless 
  timeout 15
)
ssh antany@192.168.56.2