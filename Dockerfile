FROM python:3.9.7

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN curl https://ollama.ai/install.sh | sh

CMD ["ollama", "run", "llama2"]
