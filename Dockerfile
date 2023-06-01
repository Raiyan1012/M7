# Use the official Python base image
FROM python:3.9

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the required Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the code files to the container
COPY . .

# Expose the required ports (if any)
EXPOSE 8080

# Set environment variables (if needed)
ENV ENV_VARIABLE_NAME Python_PATH_3011

# Run the command to start the application
CMD [ "python", "homechat_project_eng.py" ]
