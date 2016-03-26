@echo off

cmd /c mvn clean install

cd target

rem These are Java and WildFly-specific variables that must be adjusted to particular installations.
rem Set these variables to the appropriate path in your system before running.

set JAVAW=C:\Program Files\Java\jdk1.8.0_73\bin\javaw.exe
set BOOTLOG=C:/tools/wildfly-10.0.0.Final/standalone/log/boot.log
set LOGGINGPROPERTIES=file:/C:/tools/wildfly-10.0.0.Final/standalone/configuration/logging.properties
set JBOSSHOME=C:/tools/wildfly-10.0.0.Final
set BINDADDRESS=localhost
set CLASSPATH=C:\tools\wildfly-10.0.0.Final\jboss-modules.jar
set MODULES=C:/tools/wildfly-10.0.0.Final/modules
set JBOSSBASEDIR=C:\tools\wildfly-10.0.0.Final\standalone

echo Running WildFly (kill the javaw process to exit)
"%JAVAW%" "-Dprogram.name=JBossTools: WildFly 10.0 (Experimental)" -server -Xms64m -Xmx512m -Dorg.jboss.resolver.warning=true -Djava.net.preferIPv4Stack=true -Dsun.rmi.dgc.client.gcInterval=3600000 -Dsun.rmi.dgc.server.gcInterval=3600000 -Djboss.modules.system.pkgs=org.jboss.byteman -Djava.awt.headless=true -Dorg.jboss.boot.log.file=%BOOTLOG% -Dlogging.configuration=%LOGGINGPROPERTIES% -Djboss.home.dir=%JBOSSHOME% -Dorg.jboss.logmanager.nocolor=true -Djboss.bind.address.management=%BINDADDRESS% -Dfile.encoding=Cp1252 -classpath "%CLASSPATH%" org.jboss.modules.Main -mp %MODULES% org.jboss.as.standalone -b %BINDADDRESS% --server-config=standalone.xml "-Djboss.server.base.dir=%JBOSSBASEDIR%"
echo WildFly terminated
