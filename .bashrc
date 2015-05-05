# .bashrc
 
# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
 
# User specific aliases and functions
 
# Set colors for man pages
man() {
  env \
  LESS_TERMCAP_mb=$(printf "\e[1;31m") \
  LESS_TERMCAP_md=$(printf "\e[1;31m") \
  LESS_TERMCAP_me=$(printf "\e[0m") \
  LESS_TERMCAP_se=$(printf "\e[0m") \
  LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
  LESS_TERMCAP_ue=$(printf "\e[0m") \
  LESS_TERMCAP_us=$(printf "\e[1;32m") \
  man "$@"
}
 
#Git auto-completion for the bash shell
if [ -f ~/.git-completion.bash ]; then
. ~/.git-completion.bash
fi
 
#JAVA
export JAVA_HOME=/usr/java/jdk1.7.0_51
export JRE_HOME=$JAVA_HOME/jre
export CLASSPATH=$JAVA_HOME/lib:$JRE_HOME/lib
export JAVA_BIN=$JAVA_HOME/bin
 
#ANDROID
export ANDROID_HOME=$HOME/bin/android-sdk-linux
export ANDROID_BIN=$ANDROID_HOME/platform-tools:$ANDROID_HOME/tools
 
#ANT
export ANT_HOME=$HOME/bin/apache-ant-1.9.3
export ANT_BIN=$ANT_HOME/bin
 
#Maven
export MAVEN_HOME=$HOME/bin/apache-maven-3.1.1
export MAVEN_BIN=$MAVEN_HOME/bin
 
#Gradle
export GRADLE_HOME=$HOME/bin/gradle-1.10
export GRADLE_BIN=$GRADLE_HOME/bin
 
#Groovy
export GROOVY_HOME=$HOME/bin/groovy-2.2.2
export GROOVY_BIN=$GROOVY_HOME/bin
 
#PATH
export PATH=$PATH:$JAVA_BIN:$ANDROID_BIN:$GRADLE_BIN:$MAVEN_BIN:$ANT_BIN:$GROOVY_BIN
