# AsianCanada
A Ruby On Rails web application where Asian students can find jobs in Canada.

## Install
To install dependencies, run:

`$ bundle install`

## Run Server
To start the rails server, run:

`$ rails server`

## Deploy
On production mode, you need to configure environment variables below.

- EMAIL_ADDRESS: your email address which send emails
- EMAIL_USER: your email username
- EMAIL_PASSWORD: your email password
- EMAIL_PORT: your email port
- EMAIL_DOMAIN: your email domain

## Development
On development mode, we use MailCatcher so we can check sent emails at [localhost:1080](http://localhost:1080/).
