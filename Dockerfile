# Use an official R runtime as a parent image
FROM rocker/shiny:latest

# Set the working directory in the container to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.R
RUN R -e "install.packages(c('shiny'))"

# Make port 3838 available to the world outside this container
EXPOSE 3838

# Run app.R when the container launches
CMD ["R", "-e", "shiny::runApp('/app', port = 3838, host = '0.0.0.0')"]