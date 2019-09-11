FROM mcr.microsoft.com/windows/servercore:1903

SHELL [ "powershell" ]

USER ContainerAdministrator

ADD https://github.com/AdoptOpenJDK/openjdk8-binaries/releases/download/jdk8u222-b10/OpenJDK8U-jdk_x64_windows_hotspot_8u222b10.zip .

RUN mkdir $env:ProgramFiles\Java
RUN Expand-Archive OpenJDK8U-jdk_x64_windows_hotspot_8u222b10.zip $env:ProgramFiles\Java
RUN Remove-Item OpenJDK8U-jdk_x64_windows_hotspot_8u222b10.zip

RUN [System.Environment]::SetEnvironmentVariable('JAVA_HOME', $env:ProgramFiles + '\Java\jdk8u222-b10', [System.EnvironmentVariableTarget]::Machine)
RUN [System.Environment]::SetEnvironmentVariable('Path', $env:Path + ';' + $env:JAVA_HOME + '\bin', [System.EnvironmentVariableTarget]::Machine)

USER ContainerUser
