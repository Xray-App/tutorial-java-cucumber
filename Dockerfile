FROM maven:3.8.1-adoptopenjdk-11 AS build

# Create a default user
RUN groupadd --system automation && \
    useradd --system --create-home --gid automation  automation && \
    chown --recursive automation:automation /home/automation


RUN apt-get update && apt-get install -y unzip

WORKDIR /source

COPY features/ ./features/
COPY *.xml .
COPY *.json .
COPY *.sh .
COPY src/ ./src/

RUN chown -R automation.automation /source
USER automation

RUN mvn dependency:resolve

ENV PATH $PATH:/home/automation/.local/bin

#ENTRYPOINT ["mvn", "clean", "compile", "test", "-Dcucumber.plugin=json:report.json", "-Dcucumber.features=features/"]
ENTRYPOINT ["./run_all_cloud_standard_workflow.sh"]

