# Protem Web Application

This repository contains the source code and Docker configuration for the Protem Web Application. The Protem Application is a comprehensive solution for deploying web projects using Docker containers, featuring a CI/CD pipeline built with GitLab.

## Prerequisites

Before you begin, ensure you have the following set up:

- **Docker:** Docker should be installed on your local machine.
- **GitLab Account:** You need a GitLab account to leverage its CI/CD features.
- **Docker Hub Account:** Create a Docker Hub account to store and share Docker images.
- **Cloud Account (e.g., AWS):** Register for a cloud service provider account like AWS for deploying and hosting your application.

## Getting Started

To run the Protem Web Application, follow these steps:

1. Clone this repository:

```bash
git clone https://gitlab.com/devops-projects2461303/gitlab_project/gitlab-project.git
``` 

2. Navigate to the cloned directory:

```bash
cd gitlab-project
```

3. Define the following environment variables in your GitLab project's CI/CD settings:


- `DOCKER_HUB_USERNAME`: Your Docker Hub username.
- `DOCKER_HUB_PASSWORD`: Your Docker Hub password.
- `EC2_PRIVATE_KEY`: Private key for accessing your EC2 instance.
- `EC2_PUBLIC_IP`: Public IP address of your EC2 instance.
- `EC2_USER`: Username for accessing your EC2 instance.

4. Push your changes to the GitLab repository to trigger the CI/CD pipeline. The pipeline will automatically build, test, release, and deploy your application.


## Usage

Once the pipeline has run successfully, the application will be reachable on port 8080 of your cloud instance. You can access the Protem website through a web browser by navigating to the IP address or domain name of your cloud instance followed by :8080.

The Protem website should display as shown below:


This screenshot provides an overview of the Protem website's layout and design, showcasing its various sections.
![image](/uploads/0ab678302339ff9bdbcabce9b272128f/image.png)

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