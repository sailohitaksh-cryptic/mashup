FROM python:3.9-slim-buster

COPY requirements.txt .

RUN apt-get update && apt-get install -y ffmpeg && pip install -r requirements.txt

COPY . .

CMD streamlit run app.py
