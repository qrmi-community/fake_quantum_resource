FROM python:3.12-slim

WORKDIR /app

COPY config.yaml .
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY ./qsa_sim ./qsa_sim

CMD ["python", "-m", "qsa_sim.app", "config.yaml"]
