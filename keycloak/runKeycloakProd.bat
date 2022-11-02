@echo on
REM Fijar su JAVA_HOME
set "JAVA_HOME=C:\Work\Java\AdoptOpenJDK\jdk-11.0.6.10-hotspot"
set "PATH=%JAVA_HOME%\bin;%PATH%"
REM Fijar su KEYCLOAK_HOME
set "KEYCLOAK_HOME=C:\UFG\Java\keycloak-19.0.3"


%KEYCLOAK_HOME%\bin\kc.bat build

REM Va levantar en el puerto 8443
%KEYCLOAK_HOME%\bin\kc.bat start  --hostname-strict=false --https-key-store-file=config\keycloak-keystore.jks
