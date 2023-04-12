# Use the Windows Server Core image as the base image
FROM mcr.microsoft.com/windows/nanoserver:10.0.20348.1547-amd64

# Set the working directory to C:\install
WORKDIR /

# Download the Python installer
RUN powershell -Command Invoke-WebRequest -Uri https://www.python.org/ftp/python/3.9.6/python-3.9.6-amd64.exe -OutFile python.exe

# Install Python silently
RUN powershell -Command Start-Process -FilePath C:/install/python.exe -ArgumentList '/quiet InstallAllUsers=1 PrependPath=1' -Wait

# Remove the Python installer
RUN powershell -Command Remove-Item C:/install/python.exe

# Set the working directory to C:\app
WORKDIR C:/app
