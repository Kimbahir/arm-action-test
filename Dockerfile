FROM python:latest
RUN mkdir -p /src
WORKDIR /src
COPY ./requirements.txt .
COPY ./src ./src/
RUN pip install -r requirements.txt
ENTRYPOINT [ "python" ]
CMD ["src/app.py"]
EXPOSE 5000