# WhisperX Worker für Runpod

WhisperX Serverless Worker mit Speaker Diarization (pyannote.audio 3.1)

## Features
- Whisper large-v3
- Speaker Diarization
- Word-level timestamps
- Automatic language detection

## Input Parameters
```json
{
  "input": {
    "audio_file": "https://example.com/audio.mp3",
    "language": "de",
    "diarization": true,
    "huggingface_access_token": "hf_...",
    "min_speakers": 2,
    "max_speakers": 5,
    "align_output": true,
    "batch_size": 16
  }
}
```

## Setup

1. Accept HuggingFace model access:
   - https://huggingface.co/pyannote/speaker-diarization-3.1
   - https://huggingface.co/pyannote/segmentation-3.0

2. Deploy to Runpod Serverless