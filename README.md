# Vulnerable Rails App

This Ruby on Rails application is designed to demonstrate a simple user sign-up form with a potential mass assignment vulnerability. It is set up with a SQLite3 database and includes a basic user model.

## Prerequisites

Before you begin, ensure you have met the following requirements:

- Ruby (version specified, e.g., `3.0.0`)
- Rails (version specified, e.g., `7.0.0`)
- SQLite3

## Getting Started

Follow these simple steps.

### Installation

Clone the repository to your local machine:

```bash
git clone https://github.com/your-username/my-rails-app.git
cd my-rails-app
```

### Install the required gems:

```bash
bundle install
```

### Database Setup
This application uses SQLite3 as the database for Active Record. Ensure you have SQLite3 installed on your system.

Create the database and initialize schema with the following commands:

```bash
rails db:create
rails db:migrate
```

If you have seed data, load it into the database:

```bash
rails db:seed
```

### Running the Application
Start the Rails server:

```bash
rails server
```
```
You can then access the application at http://localhost:3000/users/new to create new users and test the application.
