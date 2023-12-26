# exercise_web_ruby

# SauceDemo Web Automation Testing

This repository contains web automation tests for the SauceDemo website (https://www.saucedemo.com), focusing on login functionality. 
Just a trial of using Ruby, Cucumber.

## Prerequisites
##### Disclaimer: I use macbook for this trial so do adjust base on your need.

Ensure you have the following installed on your Mac:
- Ruby (Ruby 2.5 or higher, which can be managed using [rbenv](https://github.com/rbenv/rbenv) or RVM)
- Bundler
- Homebrew (for installing packages on a Mac, if not already installed visit [brew.sh](https://brew.sh/))
- Git (usually pre-installed on Mac, or can be installed via Homebrew)

## Installation

Clone the repository to your local machine:

- git clone [repository_url]
- cd exercise_web_ruby
- bundle install

### Try to run example feature

```bash
cucumber --tags @exercise
```
or
```bash
bundle exec cucumber --tags @exercise
```

# Documentations
## Folder Structure
For your convenient please put the file based on the folder structure.

```
├── features
│   ├── helper
│   ├── scenarios
│   │   └── web.rb
│   ├── step_definitions
└───└──── └── web.rb
```


# Assigned Work Scenario
Website URL: https://www.saucedemo.com
Login with Valid Credentials
Assert the Next Page after Login Successful
Login with Invalid Credentials