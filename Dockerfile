FROM websphere-liberty:latest
COPY defaultServer/server.xml /config/
ADD defaultServer/apps/swagger-sample-application.war /config/dropins/
RUN installUtility install --acceptLicense defaultServer
