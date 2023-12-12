# Use an official Python runtime as a parent image
FROM python:3.9

# Set the working directory in the container
WORKDIR /usr/src/app

# Install tmux
RUN apt-get update && apt-get install -y tmux

# Copy the current directory contents into the container at /usr/src/app
COPY cli.py /usr/src/app
COPY requirements.txt /usr/src/app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Run cli.py when the container launches
CMD ["python", "./cli.py"]
