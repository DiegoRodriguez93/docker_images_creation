FROM amazonlinux:2 

RUN yum install -y python3 \
    && pip3 install --upgrade pip

WORKDIR /app

COPY . /app

RUN pip3 --no-cache-dir install -r requirements.txt

CMD ["python3", "src/app.py"]