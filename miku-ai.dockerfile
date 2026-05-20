FROM python:3.12-slim

RUN apt-get update && \
    apt-get install -y ffmpeg git && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /miku-ai

RUN git clone https://github.com/ingnitemc-hash/miku-ai.git . && \
    pip install --no-cache-dir -r requirements.txt

ENV DISCORD_BOT_TOKEN=""
ENV GROQ_API_KEY=""

CMD ["python", "main.py"]