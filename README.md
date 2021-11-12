# MyBlog

This is a simple blog app project developed in Ruby on Rails

## Built With

- Ruby on Rails
- PostgreSQL

## Getting Started

Clone the project

### Prerequisites

- [Ruby](https://www.ruby-lang.org/en/)
- [Rails](https://gorails.com/)

### Setup

- Make sure you have Ruby IRB installed on your computer
- Clone or download this repo on your machine
- Enter project directory

### Install

bundle install

### Database

```rb
# Create user
sudo -u postgres createuser blog -s

# Create the database
rake db:create

# Load the schema
rails db:schema:load

## Apply migration (only if you generate a new migration file)
rails db:migrate

# Seed
rails db:seed

```

### Run

rails server

### Test

```rb
rspec
```

### Troubleshoot

### Rspec failing

RAILS_ENV=test rake db:reset

## Authors

👤 **caleb moses**

- GitHub: [@m05e5](https://github.com/m05e5)
- Twitter: [@caleb moses](https://twitter.com/CalebMo69401446)
- LinkedIn: [caleb moses](https://www.linkedin.com/in/caleb-moses-0a1b531b9/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
