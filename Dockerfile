FROM python:3.12-slim

ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1 \
    HOST=0.0.0.0 \
    PORT=10000

RUN apt-get update \
    && apt-get install -y --no-install-recommends ffmpeg \
    && rm -rf /var/lib/apt/lists/* \
    && useradd --uid 10001 --create-home appuser

WORKDIR /app
COPY application.zip /tmp/application.zip
RUN python -m zipfile -e /tmp/application.zip /app \
    && rm /tmp/application.zip
WORKDIR /app/OncoBreath_Pace_Online
RUN pip install --no-cache-dir -r requirements.txt \
    && chown -R appuser:appuser /app
USER appuser
EXPOSE 10000
CMD ["python", "app/server.py"]
