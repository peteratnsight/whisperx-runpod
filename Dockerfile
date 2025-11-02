FROM runpod/pytorch:2.1.0-py3.10-cuda11.8.0-devel

WORKDIR /app

# System Dependencies
RUN apt-get update && apt-get install -y ffmpeg git

# Python Dependencies mit aktueller pyannote
RUN pip install --no-cache-dir \
    whisperx \
    pyannote.audio \
    runpod

# Handler kopieren
COPY handler.py /app/

CMD ["python", "-u", "handler.py"]