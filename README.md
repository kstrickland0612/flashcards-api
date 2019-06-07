# K Strickland's Flash App - API

[Check out my front-end repo's README for more information](https://github.com/kstrickland0612/flashcards-client)

Database is deployed at https://guarded-falls-36337.herokuapp.com/

## Installation Instructions

### Front End Installation

1. Fork and Clone the front end repository found here: https://github.com/kstrickland0612/flashcards-client
2. Install dependencies with ```npm install```.
3. Install FontAwesome dependencies following [these directions on NPM](https://www.npmjs.com/package/@fortawesome/react-fontawesome)
4. Run the development server with npm start.

### Back End Installation

1. Fork and Clone this very repo
2. Install dependencies with ```bundle install```.
3. Create a .env for sensitive settings (```touch .env```).
4. Generate new development and test secrets (```bundle exec rails secret```).
5. Store the keys in .env with keys ```SECRET_KEY_BASE_<DEVELOPMENT|TEST>```, respectively.
6. Run the development server with ```bin/rails server```.
7. Set up a Heroku server, if desired.

## ERD

- **ERD:**

![ERD](https://i.imgur.com/8rIubY5.png "ERD")

## Routes

| Verb   | URI Pattern      | Controller#Action |
|--------|------------------|-------------------|
| POST   | /sign-up         | users#signup      |
| POST   | /sign-in         | users#signin      |
| DELETE | /sign-out        | users#sign-out    |
| PATCH  | /change-password | users#changepw    |
| GET    | /cards           | cards#index       |
| GET    | /cards/:id       | cards#show        |
| POST   | /cards           | cards#create      |
| PATCH  | /cards:id        | cards#update      |
| DELETE | /cards/:id       | cards#destroy     |

## Wanna try it?
### [You can use Flash here!](https://kstrickland0612.github.io/flashcards-client/#/)

### [The deployed Heroku database lives here](https://guarded-falls-36337.herokuapp.com/)

### [Take a look at my front-end repo here](https://github.com/kstrickland0612/flashcards-client)
