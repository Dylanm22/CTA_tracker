# HeyCTA #
 HeyCTA is a web application designed to simplify your daily commute on the CTA. By allowing users to set up and receive
 email notifications for CTA Brown Line train arrivals, it ensures you stay informed and on time.

## Main Features
 #### View CTA stations and arrivals for the stations
 <img width="1107" alt="Screenshot 2024-04-26 at 12 39 36 PM" src="https://gist.github.com/assets/148174649/cb71b19d-240d-44c0-959d-650e038d288d">
 <img width="1440" alt="Screenshot 2024-04-28 at 4 49 31 PM" src="https://gist.github.com/assets/148174649/38baa248-1a73-4ee2-bab3-2a341f0af5a1">
 
 #### Allow users to save staion to profile
 <img width="476" alt="Screenshot 2024-04-28 at 4 49 57 PM" src="https://gist.github.com/assets/148174649/79112d9b-362c-4c50-8a08-abffefe7b67c">

 #### Create a custom notification for stations that will be sent to users via email
 <img width="692" alt="Screenshot 2024-04-28 at 4 50 24 PM" src="https://gist.github.com/assets/148174649/1a0396aa-cd71-421e-a057-f165b10757b9">
<img width="418" alt="Screenshot 2024-04-28 at 4 50 35 PM" src="https://gist.github.com/assets/148174649/4dead11d-b8b8-45c1-8d4d-84487743749f">

## Ruby Version Services Used

- Ruby version: `3.2.1`
- Rails version: `7.0.4.3`
- Boostrap version `5.3.1`
- CTA API
## Installation
- clone the repository and switch to the main branch
- To get access to the api informatin you will need to apply to get a cta api key from here "https://www.transitchicago.com/developers/traintrackerapply/"
- once you have cta api key create a .env file and add the api key to it named CTA_KEY
- Now run these commands

```
bundle install 
rails db:migrate 
rake sample_data 
bin/dev
```

### Entity Relationship Diagram
<img width="1107" alt="Screenshot 2024-04-26 at 12 39 36 PM" src="https://gist.github.com/assets/148174649/0651e5ce-ce3f-4b6f-bce2-b288238d9e4d">

## Contribution Guidelines 
---
### Introduction
Thank you for your interest in contributing to **HeyCTA**. This document provides guidelines and instructions on how to contribute to the project.

### How to Contribute
1. **Setup your environment**: Follow the installation instructions above.

[Github Project Link](https://github.com/users/Dylanm22/projects/1)

2. **Find an issue to work on**: In the Projects tab, check out our issues, we continue to add new issues daily and feel free to create your own issues as well.
 

### Coding Conventions
We adhere to the Ruby community style guide, and we expect all contributors to follow suit. Here are key conventions specific to our project:

- **Code Style**: Follow the [Ruby Style Guide](https://rubystyle.guide/), which provides detailed guidelines on the coding style preferred by the Ruby community.
- **Naming Conventions**:
  - Use `snake_case` for variables, methods, and file names.
  - Use `PascalCase` for class and module names.
  - Reflect domain concepts accurately in naming. For instance, if you are working within a financial application, prefer names like `user_account_details` over vague terms like `data`.

- **Design Principles**: Focus on Domain-Driven Design (DDD):
  - Organize code to reflect the domain model clearly.
  - Use service objects, decorators, and other design patterns that help isolate domain logic from application logic.


### Comments and Documentation
- **Comment your code** where necessary to explain "why" something is done, not "what" is done—source code should be self-explanatory regarding the "what".
- **Document methods and classes** thoroughly, focusing on their roles within the domain model, especially for public APIs.

### Version Control Practices
- Commit messages should be clear and follow best practices, such as those outlined in [How to Write a Git Commit Message](https://chris.beams.io/posts/git-commit/).
- Keep commits focused on a single issue to simplify future maintenance and troubleshooting.

### Branch Naming Conventions
Please use the following naming conventions for your branches:

- `<issue#-description>` (i.e 31-added-ransack-search)

### Pull Request Process
1. **Creating a Pull Request**: Provide a detailed PR description, referencing the issue it addresses.
2. **Review Process**: PRs require review from at least one maintainer.


Thank you for contributing to **HeyCTA**!

## FAQ
#### API Documentation
https://www.transitchicago.com/assets/1/6/cta_Train_Tracker_API_Developer_Guide_and_Documentation.pdf[/embed]
