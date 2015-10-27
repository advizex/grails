FROM java:8

RUN curl -L https://github.com/grails/grails-core/releases/download/v3.0.9/grails-3.0.9.zip > grails.zip

RUN unzip grails.zip

ENV GRAILS_HOME=/grails-3.0.9

ENV PATH=$GRAILS_HOME/bin:$PATH
