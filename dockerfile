FROM python:3
# Set the working directory.
WORKDIR /usr/src/app
COPY /App /usr/src/app
RUN pip install --no-cache-dir -r requirments.txt
CMD ["pytest"]