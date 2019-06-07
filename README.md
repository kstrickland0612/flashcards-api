# K Strickland's Flash App - API

[Check out my front-end repo's README for more information](https://github.com/kstrickland0612/flashcards-client)

Database is deployed at https://guarded-falls-36337.herokuapp.com/

## Technologies Used:

### Front End
* JavaScript
* React
* React-Bootstrap
* HTML5
* CSS3
* Axios
* FontAwesome (icons)

### Back End
* Ruby
* Rails
* Heroku

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

## Planning

A requirement of this capstone was to choose our own prefered tech stack to implement our app. I chose to use Ruby on Rails for the backend and React for the front end.

Once I settled on the technology, I set a pretty comprehensive 4 day schedule for myself. I added items to the schedule as needed on Day 3 and 4 after MVP were already met. I've found that meeting MVP is super simple when I take time to set up a smart schedule that allows for re-prioritization as needed.

If you feel like getting a glimpse of what my planning process looks like...

<details><summary>Feel free to check out my schedule here (dropdown)</summary>

### Day 1:

- Set up Rails template
- Create GH repo for back end
- Create Heroku app and deploy initial commits to it
- Set up React template
- Create GH repo for front end
- Test user auth end points with curl scripts
- User auth front-end setup (make sure it works)
- Scaffold card resource
- Test card resource end points with curl scripts
- CRUD for cards from front end
	- GET /cards cards#index
		- From ‘/’ route (for all cards)
		- From authenticated ‘/my-cards’ (nav bar link to my account >>> my cards - for user’s cards)
	- POST /cards cards#create
		- From authenticated ‘/build-card’ path (nav bar link)
	- PATCH /cards:id cards#update
	- From authenticated ‘/edit-card/:id’ path (from my cards page)
		- Might be ‘my-cards/edit-card/:id’?
	- DELETE /cards/:id cards#destroy
		- From authenticated ‘/my-cards:id’
- Get deployed app up and running (GH Pages)

### Day 2:

- Front-end configuration (React components):
	- Nav component (shared)
	- Footer component (shared)
	- Card Form component (shared)
	- Card component
	- Cards component
	- CardCreate component
	- CardEdit component
- Card “flip” feature
- Search feature by card category
- Make category field into a dropdown (populated from DB) with 'Other' option
  - have this list avoid duplicates

### Day 3:

- Deck view where categories take user to that deck page of cards (‘cards/:category’)
	- secondary category dropdown at top of page with all categories, duplicates removed
- change search to search content of card, not category
- make search bar only available from ‘/’ (root)
- make filter by tag only available from ‘/’ (root)
- fix all nestedDom errors
- Styling: get cards to lay out 2 by 2
- Styling: get MyCard to have edit and delete button displayed under each card
- Styling: Auth forms
- add image capability to cards
- Troubleshooting/debugging
  - BUG: Category is blank when creating a new card with a category selected from the dropdown. Category only populates if it is types in the ‘other’ field.
	- BUG: filter by tag shows up on edit card field
- style card form

### Day 4:

- Stying: pick color theme
- have a message appear when no items match search
- add All Cards option to filter category dropdown that bumps user back to root where they can see all cards
- set up authorization for create, edit and delete (token in the axios header, and back-end rails configuration for users and cards tables)
- remove all console.logs and console.errors from code
- Troubleshooting/debugging
- this README! :)
</details>

### ERD

- **ERD:**

![ERD](https://i.imgur.com/8rIubY5.png "ERD")

### Routes

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

## Future Thinking

I would like to dive into user story 10 (see front end repo for details: https://github.com/kstrickland0612/flashcards-client), which will involve adding a deck resource to the back end Rails API. I think it would be a great feature for users to be able to create a deck of cards they are interested in.

I could also see a "like" feature on each card being useful, and cards would be sorted based on highest likes at the top of the page. Since this is a community app where everone is contributing to a shared pool of cards, this would help weed out the cards that aren't the best quality.

## Wanna try it?
### [You can use Flash here!](https://kstrickland0612.github.io/flashcards-client/#/)

### [The deployed Heroku database lives here](https://guarded-falls-36337.herokuapp.com/)

### [Take a look at my front-end repo here](https://github.com/kstrickland0612/flashcards-client)
