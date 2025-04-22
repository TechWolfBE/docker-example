# Layer 1: Base image (OS and preinstalled software)
FROM python:3.13.3-slim

# Layer 2: Set environment variables
ENV HELLO_WORLD="UGR"

# Layer 3: Set working directory
WORKDIR /home/ugr

# Layer 4: Copy application source code (NOTE: bad practice to copy the source code here, should be done after installing dependencies)
COPY . .

# Layer 5: Install dependencies (NOTE: bad practice to install dependencies here, should be done before copying the source code)
RUN pip install -r requirements.txt

# Layer 6: Set default command to run the app
CMD ["python", "main.py"]
