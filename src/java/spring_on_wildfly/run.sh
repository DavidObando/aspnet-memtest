#!/usr/bin/env bash

mvn clean install

cd target

# These are Java and WildFly-specific variables that must be adjusted to particular installations.
# Set these variables to the appropriate path in your system before running.

export JAVAW=java
export BOOTLOG=/home/davidobando/wildfly-10.0.0.Final/standalone/log/boot.log
export LOGGINGPROPERTIES=file:/home/davidobando/wildfly-10.0.0.Final/standalone/configuration/logging.properties
export JBOSSHOME=/home/davidobando/wildfly-10.0.0.Final
export BINDADDRESS=localhost
export CLASSPATH=/home/davidobando/wildfly-10.0.0.Final/jboss-modules.jar
export MODULES=/home/davidobando/wildfly-10.0.0.Final/modules
export JBOSSBASEDIR=/home/davidobando/wildfly-10.0.0.Final/standalone

echo "Running WildFly (kill the java process to exit)"
"$JAVAW" "-Dprogram.name=JBossTools: WildFly 10.0" -server -Xms64m -Xmx512m -Dorg.jboss.resolver.warning=true -Djava.net.preferIPv4Stack=true -Dsun.rmi.dgc.client.gcInterval=3600000 -Dsun.rmi.dgc.server.gcInterval=3600000 -Djboss.modules.system.pkgs=org.jboss.byteman -Djava.awt.headless=true -Dorg.jboss.boot.log.file=$BOOTLOG -Dlogging.configuration=$LOGGINGPROPERTIES -Djboss.home.dir=$JBOSSHOME -Dorg.jboss.logmanager.nocolor=true -Djboss.bind.address.management=$BINDADDRESS -Dfile.encoding=Cp1252 -classpath "$CLASSPATH" org.jboss.modules.Main -mp $MODULES org.jboss.as.standalone -b $BINDADDRESS --server-config=standalone.xml "-Djboss.server.base.dir=$JBOSSBASEDIR"
echo WildFly terminated
