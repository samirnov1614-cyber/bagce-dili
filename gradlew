#!/usr/bin/env sh
##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS=""

APP_NAME="Gradle"
PRG="$0"

# resolve symlinks
while [ -h "$PRG" ]; do
  ls=`ls -ld "$PRG"`
  link=`expr "$ls" : '.*-> \(.*\)$'`
  if expr "$link" : '/.*' > /dev/null; then
    PRG="$link"
  else
    PRG=`dirname "$PRG"`/"$link"
  fi
done

PRGDIR=`dirname "$PRG"`
# If the script is called via a relative path, convert it to absolute
saveddir=`pwd`
cd "$PRGDIR" >/dev/null
PRGDIR=`pwd -P`
cd "$saveddir" >/dev/null

# Determine Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
  JAVACMD="$JAVA_HOME/bin/java"
else
  JAVACMD="java"
fi

# As a last resort, attempt to find java on the PATH
if [ ! -x "$JAVACMD" ] ; then
  JAVACMD=`which java 2>/dev/null`
fi

if [ ! -x "$JAVACMD" ] ; then
  echo "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH."
  echo "Please set JAVA_HOME to point to your JDK installation."
  exit 1
fi

# Escape spaces in PRGDIR on macOS (java launcher cannot handle unescaped spaces)
case "`uname`" in
  *CYGWIN*) cygwin=true ;;
  *) cygwin=false ;;
esac

if $cygwin ; then
  PRGDIR=`cygpath --path --unix "$PRGDIR"`
  JAVACMD=`cygpath --path --unix "$JAVACMD"`
fi

# Build the command line
CLASSPATH="$PRGDIR/gradle/wrapper/gradle-wrapper.jar"
# Use DEFAULT_JVM_OPTS, then allow overrides with GRADLE_OPTS and JAVA_OPTS
JVM_OPTS="$DEFAULT_JVM_OPTS $GRADLE_OPTS $JAVA_OPTS"

# Exec the wrapper
exec "$JAVACMD" $JVM_OPTS -cp "$CLASSPATH" org.gradle.wrapper.GradleWrapperMain "$@"
gradle wrapper && git add -f gradle/wrapper/gradle-wrapper.jar && git commit -m "Fix: Add missing gradle-wrapper.jar" && git push
