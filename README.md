# Protem Web Application

This repository contains the source code and Jenkins configuration for the Protem Web Application. The Protem Application is a comprehensive solution for deploying web projects using Docker containers, featuring a CI/CD pipeline built with Jenkins.

## Prerequisites

Before you begin, ensure you have the following set up:

- **Docker:** Docker should be installed on your local machine.
- **Jenkins Server:** You need a Jenkins server set up to run the CI/CD pipeline.
- **Docker Hub Account:** Create a Docker Hub account to store and share Docker images.
- **Cloud Account (e.g., AWS):** Register for a cloud service provider account like AWS for deploying and hosting your application.

## Getting Started

To run the Protem Web Application, follow these steps:

1. Clone this repository:

```bash
git clone https://github.com/JL-Omega/Jenkins-project.git
``` 

2. Navigate to the cloned directory:

```bash
cd Jenkins-project
```

3. Define the following environment variables in your GitLab project's CI/CD settings:


- `DOCKER_HUB_USERNAME`: Your Docker Hub username.
- `DOCKER_HUB_PASSWORD`: Your Docker Hub password.
- `EC2_PRIVATE_KEY`: Private key for accessing your EC2 instance.
- `EC2_PUBLIC_IP`: Public IP address of your EC2 instance.
- `EC2_USER`: Username for accessing your EC2 instance.

To begin with, ensure that you have configured a webhook between Jenkins and your GitHub repository. This configuration is crucial for automating the execution of the pipeline whenever changes are pushed to the repository.

####Follow these steps to set up the webhook:

- ***Access Jenkins Dashboard***: Log in to your Jenkins dashboard.
- ***Create a New Item***: Click on "New Item" to create a new pipeline project.
- ***Configure Pipeline***: In the pipeline configuration, specify the GitHub project URL and define the pipeline script from the repository containing the Jenkinsfile.
- ***Set Up Webhook***: Go to your GitHub repository settings and navigate to "Webhooks." Add a new webhook with the payload URL pointing to your Jenkins server's webhook URL. Ensure that you select the appropriate events that should trigger the webhook, typically "Push" events.

Once you have configured the webhook, any changes pushed to the GitHub repository will automatically trigger the Jenkins pipeline, streamlining the CI/CD process.

#### Ngrok for Testing (Optional)

If you're working on your local machine and need a public IP address to test webhook functionality, you can use Ngrok. Ngrok provides a secure tunnel to your local server, exposing it to the internet temporarily. Here's how you can use Ngrok:

1. ***Install Ngrok***: Download and install Ngrok from the official website.
2. ***Expose Jenkins Server***: Start Ngrok and expose the port where Jenkins is running. For example, if Jenkins is running on port 8080, you can expose it using the command: ngrok http 8080.
3. ***Copy Public URL***: Ngrok will generate a public URL that forwards traffic to your local Jenkins server. Copy this URL and use it as the payload URL when setting up the webhook in your GitHub repository.

By utilizing Ngrok, you can test webhook functionality even when working on a local development environment.

With the webhook configured and Ngrok set up (if needed), you're ready to leverage Jenkins CI/CD capabilities to automate the deployment of your Protem Web Application. Any changes pushed to the repository will automatically trigger the pipeline, ensuring seamless integration and deployment.


## Usage

Once the pipeline has run successfully, the application will be reachable on port 8080 of your cloud instance. You can access the Protem website through a web browser by navigating to the IP address or domain name of your cloud instance followed by :8080.

The Protem website should display as shown below:


This screenshot provides an overview of the Protem website's layout and design, showcasing its various sections.
![image](https://github.com/JL-Omega/Gitlab-CI-CD-Project/assets/96908472/9b6b166d-40c9-403e-9d4d-d9319be6b318)

## Application Structure

The Protem application is a static website designed to showcase technological and maintenance services offered by Protem. The website is built using HTML, CSS (including Sass), and JavaScript for client-side interactivity. Here's an overview of the application structure:

### Frontend Components:
1. **Intro**: Provides an introduction to Protem, highlighting its commitment to technological innovation and sustainability.
2. **Nos services (Our Services)**: Describes the range of services offered by Protem, including home automation, electrical housing design and installation, and photovoltaic panel installation.
3. **Témoignages (Testimonials)**: Displays testimonials from satisfied clients, showcasing their experiences with Protem's services.
4. **Nous contacter (Contact Us)**: Provides a contact form for users to reach out to Protem, along with social media links for additional contact options.

### Static Assets:

- **Images**: Various images are used throughout the website to enhance visual appeal and convey information effectively.
- **Sass Stylesheets**: Sass files are utilized for styling, incorporating variables, functions, mixins, and breakpoints for responsive design.
- *CSS Stylesheets*: The Sass files are compiled into CSS stylesheets for browser rendering.
- *JavaScript Files*: Client-side JavaScript is used to add interactivity and functionality to the website, such as form validation and navigation.

### External Dependencies:

1. *Font Awesome*: The `Font Awesome` icon library is imported to use icons throughout the website.
2. *Google Fonts*: The Source Sans Pro font from `Google Fonts` is imported to enhance typography on the website.

### Layout:

The layout of the website is managed using a combination of `CSS Grid` and `Flexbox`, allowing for flexible and responsive designs across various screen sizes.


### Hosting:

The application can be hosted on any web server capable of serving static content, such as `Apache` or `Nginx`.

### Backend:
Since the website is static there is no backend component involved in the application architecture.
The Protem application focuses on providing information about Protem's services in a visually appealing and user-friendly manner, catering to potential clients interested in technological solutions and maintenance services.

## Docker Image Deployment

The Dockerfile in the repository builds both the frontend and backend services. The resulting Docker image is pushed to Docker Hub.

## Environment Variables

The following environment variables are required:

#### Predefined CI/CD Variables in GitLab:

- ***CI_REGISTRY_PASSWORD***: Password for accessing the GitLab Docker registry.
- ***CI_COMMIT_REF_SLUG***: Slugified version of the branch or tag name.

#### Variables Defined in GitLab CI/CD Settings:

- ***DOCKER_HUB_USERNAME***: Your Docker Hub username.
- ***DOCKER_HUB_PASSWORD***: Your Docker Hub password.
- ***EC2_PRIVATE_KEY***: Private key for accessing your EC2 instance.
- ***EC2_PUBLIC_IP***: Public IP address of your EC2 instance.
- ***EC2_USER***: Username for accessing your EC2 instance.

#### Variables Defined in .gitlab-ci.yml:

- ***IMAGE_NAME***: Name of the Docker image.
- ***IMAGE_TAG***: Tag for the Docker image.
- ***DOCKER_IMAGE_NAME***: Full name of the Docker image.


## Contributing
If you'd like to contribute to this project, please fork the repository and submit a pull request.

## Maintainer

This project is maintained by Jean-Luc Mpande. You can reach out to the maintainer via email at mpandejl1@gmail.com or [LinkedIn](https://www.linkedin.com/in/jean-luc-mpande-75981a23b/).

## License

This project is licensed under the MIT License - see the [LICENSE] file for details.
