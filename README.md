# cicd-dockerize-app
A workflow to dockerize an application and push it in dockerhub

## What's happening in this project
1. When a dev pushes his code to the repository, the workflow runs
2. Github action workflow dockerizes the portfolio website and pushes the image to the dockerhub. Checkout my website image using the command ```docker pull jaimejr551/my-portfolio-website```
3. Kubernetes orchestration manifest file can be accessed in https://github.com/jaimefernandezjr/deploy-portfolio-website-k8s 

### Extras
- Setup Github Secrets to store the password  
