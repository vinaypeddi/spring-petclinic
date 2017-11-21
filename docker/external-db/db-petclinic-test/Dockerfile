FROM db-schema:latest
COPY data.sql /docker-entrypoint-initdb.d/data.sql
LABEL com.petclinic.maintainer="Vish"
LABEL com.petclinic.description="MySQL Test DB Data for petclinic"
LABEL com.petclinic.env="test"
