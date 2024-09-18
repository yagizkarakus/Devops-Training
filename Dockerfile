FROM python:3.12

WORKDIR /code

RUN pip install --no-cache-dir --upgrade "fastapi[standard]"

COPY ./main.py /code/main.py

CMD ["fastapi", "run", "main.py" ,"--port", "8080"]