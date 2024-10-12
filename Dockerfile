FROM python:3.8.10-slim AS buildando

WORKDIR /app 

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

EXPOSE 5000

ENTRYPOINT [ "flask" ]

CMD ["run", "--host=0.0.0.0"]



