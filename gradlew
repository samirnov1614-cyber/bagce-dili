#!/usr/bin/env sh

#
# Copyright 2015 the original author or authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

##############################################################################
##
##  Gradle start up script for UN*X
##
##############################################################################

# Attempt to set APP_HOME
# Resolve links: $0 may be a symlink
PRG="$0"
# Need this for relative symlinks.
while [ -h "$PRG" ] ; do
    ls -ld "$PRG"
    PRG=`readlink "$PRG"`
done
PRG_DIR=`dirname "$PRG"`
APP_HOME=`cd "$PRG_DIR/." >/dev/null 2>&1 && pwd`

# Add default JVM options here. You can also use JAVA_OPTS and GRADLE_OPTS to pass JVM options to this script.
DEFAULT_JVM_OPTS='" "-Xmx64m" "-Xms64m"'

# Use the maximum available, or set MAX_FD != nothing to use that value.
MAX_FD="maximum"

warn ( ) {
    echo "$*"
} >&2

die ( ) {
    echo
    echo "$*"
    echo
    exit 1
} >&2

# OS specific support (must be 'true' or 'false').
IS_CYGWIN=false
IS_MSYS=false
IS_MINGW=false
case "`uname`" in
  CYGWIN* )
    IS_CYGWIN=true
    ;;
  Darwin* )
    ;;
  MSYS* )
    IS_MSYS=true
    ;;
  MINGW* )
    IS_MINGW=true
    ;;
esi

# Attempt to set APP_HOME
# Resolve links: $0 may be a symlink
PRG="$0"
# Need this for relative symlinks.
while [ -h "$PRG" ] ; do
    ls -ld "$PRG"
    PRG=`readlink "$PRG"`
done
PRG_DIR=`dirname "$PRG"`
APP_HOME=`cd "$PRG_DIR/." >/dev/null 2>&1 && pwd`

# Determine the Java command to use to start the JVM.
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        # IBM's JDK on AIX uses strange locations for the executables
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
    fi
else
    JAVACMD="java"
    which java >/dev/null 2>&1 || die "ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.

Please set the JAVA_HOME variable in your environment to match the
location of your Java installation."
fi

# Increase the maximum file descriptors if we can.
if [ "$IS_CYGWIN" = "true" -o "$IS_MINGW" = "true" ] ; then
    MAX_FD_LIMIT=`ulimit -H -n`
    if [ $? -eq 0 ] ; then
        if [ "$MAX_FD" = "maximum" -o "$MAX_FD" = "max" ] ; then
            MAX_FD="$MAX_FD_LIMIT"
        fi
        ulimit -n $MAX_FD
        if [ $? -ne 0 ] ; then
            warn "Could not set maximum file descriptor limit: $MAX_FD"
        fi
    else
        warn "Could not query maximum file descriptor limit: $MAX_FD_LIMIT"
    fi
fi

# For Darwin, add options to specify how the application appears in the dock
if [ "$IS_DARWIN" = "true" ] ; then
    GRADLE_OPTS="$GRADLE_OPTS \"-Xdock:name=$APP_NAME\" \"-Xdock:icon=$APP_HOME/media/gradle.icns\""
fi

# For Cygwin or MSYS convert to windows paths before running java
if [ "$IS_CYGWIN" = "true" ] ; then
    APP_HOME=`cygpath --path --mixed "$APP_HOME"`
    CP="`cygpath --path --mixed "$CLASSPATH"`"
    JAVACMD=`cygpath --unix "$JAVACMD"`
    # We build the pattern for arguments to be converted via cygpath
    ROOTDIRSRAW=`find -L / -maxdepth 3 -type d -name java_modules 2>/dev/null | tr '\r\n' ':' 2>/dev/null`
    ROOTDIRS="${ROOTDIRSRAW%?}"
    if [ -n "$ROOTDIRS" ] ; then
        ROOTDIRS=`echo "$ROOTDIRS" | sed 's#:$##'`
    fi
    #
    CLASSPATH=`find -L . -type f -name '*.jar' 2>/dev/null | xargs cygpath --path --mixed`
    CLASSPATH=`cygpath --unix "$CLASSPATH"`
elif [ "$IS_MINGW" = "true" ] ; then
    APP_HOME=`(cd "$APP_HOME"; pwd -W)`
    CP="`cygpath --path --mixed "$CLASSPATH"`"
    JAVACMD=`cygpath --unix "$JAVACMD"`
fi

# Collect all arguments for the java command, stacking in reverse order:
for arg in "$@" ; do
    case $arg in
        -d64                  ) 64BIT_JVM_OPTS=" -d64"   ;;
        -Xmx*,-Xms*,-XX*     ) JVM_OPTS="$JVM_OPTS $arg" ;;
        -cp|-classpath       ) skip=yes                  ;;
        -*                   ) JVM_OPTS="$JVM_OPTS $arg" ;;
        *                    ) break                    ;;
    esac
done

if [ "$skip" = "yes" ] ; then
    shift
fi

exec "$JAVACMD" $DEFAULT_JVM_OPTS $JVM_OPTS -classpath "$APP_HOME/lib/gradle-core-8.1.jar:..." org.gradle.wrapper.GradleWrapperMain "$@"
