![](https://img.shields.io/badge/Microverse-blueviolet)

# Book an appointment app

The project we are going to build for the Final Capstone Project is based on an app to book an appointment to the doctor. We should follow the given design of the website, but we personalized the content.

![screenshot](./app_screenshot.png)

Additional description about the project and its features.

## Learning objectives

- Apply technical knowledge and skills gained in previous modules in a complex project.
- Understand pros and cons of different approaches of connecting Ruby on Rails back-end with React front-end.
- Understand principles of Ruby on Rails and React frameworks.
- Apply Ruby best practices and language style guides in code.
- Apply RoR best practices and language style guides in code (e.g. thin controllers).
- etc ...

## Built With

- ![Ruby](https://img.shields.io/badge/-Ruby-000000?style=flat&logo=ruby&logoColor=red)
- ![Ruby on Rails](https://img.shields.io/badge/-Ruby_on_Rails-000000?style=flat&logo=ruby-on-rails&logoColor=blue) 

## Live Demo

[Live Demo Link](https://livedemo.com)


## Getting Started

**This is an example of how you may give instructions on setting up your project locally.**
**Modify this file to match your project, remove sections that don't apply. For example: delete the testing section if the currect project doesn't require testing.**


To get a local copy up and running follow these simple example steps.

### Prerequisites

- You need to have git installed in your machine.
- Install a recent version of Postgres.
- Already install Rails

### Setup

- Creating the book-an-appontment

```bash
$   rails new book-an-appontment --api --database=postgresql
$   cd book-an-appontment # Move into the application directory
```

- Clone this repository

```bash
$ https://github.com/BenMukebo/book-an-appontment.git
$ cd hello-react-front-end
```

- Create the database

```bash
$   rails db:create
```


### Install

- Setting Up PostgreSQL

> The postgres installation doesn't setup a user for you, so you'll need to follow these steps to create a user with permission to create databases

```bash
$  sudo -u postgres createuser blog-app -s
```


### Usage

- To starting up the Web Server

```bash
$   rails s # or
$   rails server -p3001

$  sudo service postgresql restart # To restart the server
```

### Run tests

- Run spec

```bash
$  bundle exec rspec ./spec/models/
$  bundle exec rspec ./spec/routing/
```

- Run linter

```bash
$  rubocop .
$  rubocop -A # RuboCop will try to automatically fix offenses:
```

### Deployment



## Authors

👤 **Azaria SAIDI ALLY**

- GitHub: [@azy64](https://github.com/azy64)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/azaria-saidi-524780112/)


👤 **Ntazama Willy**

- GitHub: [@ntzwilly](https://github.com/ntzwilly)
- LinkedIn: [@ntazamawilly](https://linkedin.com/in/ntazama-willy-b676b7aa)


👤 **Ben Mukebo**

- GitHub: [@BenMukebo](https://github.com/BenMukebo)
- Twitter [@BenMukebo](https://twitter.com/BenMukebo)
- LinkedIn [BenMukebo](https://www.linkedin.com/in/kasongo-mukebo-ben-591720205/)

👤 **Victor**

- GitHub: [@VICTOR-CHUKWU](https://github.com/VICTOR-CHUKWU)
- LinkedIn: [Victor-chukwu](https://www.linkedin.com/in/victor-chukwu-95a020143)
  
## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/azy64/book-an-appointment/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Hat tip to anyone whose code was used
- Inspiration
- etc

## 📝 License

This project is [MIT](./MIT.md) licensed.