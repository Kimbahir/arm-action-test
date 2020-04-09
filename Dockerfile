FROM python:latest
RUN mkdir -p /src
WORKDIR /src
COPY ./requirements.txt .
COPY ./app.py .
COPY ./src ./src/
RUN pip install -r requirements.txt
ENTRYPOINT [ "python" ]
CMD ["app.py"]
EXPOSE 80