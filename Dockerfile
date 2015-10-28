FROM java:8

RUN curl -L https://github.com/grails/grails-core/releases/download/v3.0.9/grails-3.0.9.zip > grails.zip; unzip grails.zip; rm grails.zip

ENV GRAILS_HOME=/grails-3.0.9

ENV PATH=$GRAILS_HOME/bin:$PATH

ENV JAVA_OPTS="-Djava.security.egd=file:/dev/./urandom"
