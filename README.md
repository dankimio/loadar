# Loadar

**Problem:** A shipper wants to get the best price for the delivery of goods on his delivery routes from his carriers.

Create a simple Ruby on Rails app for carriers to submit their prices for the delivery of goods from A to B (see “List of Routes”) with given load types (see “List of Load Types”). Each route has 3 load types, so in total, carriers can submit 12 different prices for each route/load combination.

### List of Routes:

- Berlin -> Warsaw
- Belfast -> Cardiff
- Prague -> Brussels
- Amsterdam -> Cologne

### List of Load Types:

- 5 pallets
- 10 pallets
- 26 pallets

## App Requirements:

- Carriers that bid with their prices on routes/load types should be able to see if their price bid is winning or if they need to lower their price to win the competition.
- Authentication, login, and user management are not required for the trial Rails app - carriers just need to enter their company name so that their prices are associated with their name.
- A simple and intuitive UI/UX is important for carriers to submit their prices efficiently and review the results of their bidding process (for example, to see if they are winning or not).
Please send your Rails app as a .zip archive via email, or share a link to a public GitHub repository containing the Rails app.

## To-do

- [x] Generate the app
- [x] Come up with UX
- [x] Create views
- [x] Create models
- [x] Sign in as company
- [x] Change company
- [x] Implement the form
- [x] Create bids
- [x] Show current bid
- [x] Show if the bid is winning
- [ ] Lint erb
- [ ] Mobile first
- [ ] Add tests
- [x] Deploy
- [ ] Add example to README
- [ ] Add instructions to README
- [x] Animate radio inputs
