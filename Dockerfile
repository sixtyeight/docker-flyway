FROM openjdk:8

RUN wget -O /flyway.tar.gz https://repo1.maven.org/maven2/org/flywaydb/flyway-commandline/4.0.3/flyway-commandline-4.0.3.tar.gz

RUN tar -xzf /flyway.tar.gz && rm /flyway.tar.gz && mv /flyway-4.0.3 /flyway

RUN ln -s /flyway/flyway /usr/local/bin/flyway
RUN chmod ugo+x /flyway/flyway

USER 1000

WORKDIR /flyway
ENTRYPOINT ["flyway"]
CMD ["--help"]"
