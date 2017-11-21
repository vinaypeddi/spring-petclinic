FROM mysql:5.7.8
# Copy schema into entrypoint dir. Rename it so that it is
# alphabetically the first file.
COPY schema.sql /docker-entrypoint-initdb.d/aaa-schema.sql
LABEL com.petclinic.maintainer="Vish"
LABEL com.petclinic.description="MySQL DB Schema for petclinic"
LABEL com.petclinic.env=""
