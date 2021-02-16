FROM  python:3.8

RUN mkdir -p /root/bdv-dev/
WORKDIR /root/bdv-dev/

COPY . /root/bdv-dev/
RUN pip install --no-cache-dir -r requirements.txt

ENV TZ Europe/Moscow

EXPOSE 7777

CMD ["python", "app.py"]



