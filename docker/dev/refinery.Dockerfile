FROM rust:latest
RUN cargo install refinery_cli
SHELL ["/bin/bash", "-c"]
RUN echo $'[main] \n\
db_type = "Postgres" \n\
db_host = "0.0.0.0" \n\
db_port = "5432" \n\
db_user = "arroyo" \n\
db_pass = "arroyo" \n\
db_name = "arroyo" \n\
trust_cert = false' > /tmp/refinery.toml
