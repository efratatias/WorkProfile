FROM python:3.9

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY static/ static/
COPY templates/ templates/
COPY app.py dbcontext.py person.py ./

EXPOSE 8080

ENTRYPOINT ["python", "app.py"]
