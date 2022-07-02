# Pull an official base image
FROM python

# Setting work directory
WORKDIR /web-app

# Install dependencies
COPY ./requirements.txt /web-app/requirements.txt

RUN pip install -r requirements.txt
RUN export FLASK_APP=app.py

# Copy src files
COPY . /web-app

# Run Server
CMD ["flask", "run", "--host=0.0.0.0"]