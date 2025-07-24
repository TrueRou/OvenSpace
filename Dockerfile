FROM python:3.11-slim

ENV VIRTUAL_ENV=/opt/venv
RUN python3 -m venv $VIRTUAL_ENV
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

COPY . /app

# Install dependencies:
RUN pip install -r /app/requirements.txt

# Run the application:
CMD ["python", "/app/OvenSpace.py"]