FROM nxtlytics/base-python38:ci.master.1.xxxxx

# Add the application code to /app
ADD src /app

# Ensure work directory is /app
WORKDIR /app

# Install the dependencies
RUN pipenv sync

# Run the application
CMD pipenv run python /app/main.py

EXPOSE 8000
