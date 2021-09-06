FROM python:3.9.1-slim
WORKDIR /docker_python_bdd/
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["behave", "./features/rest_api.feature"]
