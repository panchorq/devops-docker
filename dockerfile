FROM python:3.12-slim
WORKDIR /app
COPY requerimientos.txt /app/
RUN pip install -r /app/requerimientos.txt
COPY web /app
RUN cd /app/web
EXPOSE 8000
CMD ["python", "manage.py" ,"runserver","0.0.0.0:8000" ]