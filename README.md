# Microsoft Windows Server Core with AdoptOpenJDK

Launch PowerShell and query the Java version, as follows.

    PS C:\> java -version
    openjdk version "1.8.0_222"
    OpenJDK Runtime Environment (AdoptOpenJDK)(build 1.8.0_222-b10)
    OpenJDK 64-Bit Server VM (AdoptOpenJDK)(build 25.222-b10, mixed mode)

The container's user environment appears as follows. Notice the JAVA_HOME variable.

    PS C:\> Get-ChildItem -Path env:*

    Name                           Value
    ----                           -----
    TEMP                           C:\Users\ContainerUser\AppData\Local\Temp
    TEMP                           C:\Users\ContainerUser\AppData\Local\Temp
    CommonProgramFiles             C:\Program Files\Common Files
    OS                             Windows_NT
    PROCESSOR_IDENTIFIER           Intel64 Family 6 Model 142 Stepping 10, GenuineIntel
    ComSpec                        C:\Windows\system32\cmd.exe
    PROMPT                         $P$G
    SystemDrive                    C:
    FPS_BROWSER_USER_PROFILE_ST... Default
    USERDOMAIN                     User Manager
    NUMBER_OF_PROCESSORS           2
    TMP                            C:\Users\ContainerUser\AppData\Local\Temp
    ProgramData                    C:\ProgramData
    ProgramW6432                   C:\Program Files
    windir                         C:\Windows
    JAVA_HOME                      C:\Program Files\Java\jdk8u222-b10
