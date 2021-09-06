RUN curl -fsSLO  https://get.docker/builds/Linux/x86_64/docker-17.04.0-ce.tgz  \
  && tar xzvf docker-17.04.0-ce.tgz \
  && mv docker/docker /usr/local/bin \
  && rm -r docker docker-17.04.0-ce.tgz
FROM python:3.9.1-slim
WORKDIR /docker_python_bdd/
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["behave", "./features/rest_api.feature"]
