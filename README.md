# CreatrHub v8 — Community

## Run
Double-click `start-creatrhub.bat`. The launcher installs dependencies if needed, starts the Node server, and opens http://localhost:3000.

## Community
- Clients can publish hiring projects with category, project type, short brief and budget.
- Everyone can browse open Community projects.
- Creators/Editors can view the client profile and send a message such as “Yes, I'm ready to work on this project.”
- Client notifications show when a creator responds, with a link back to the project responses.
- Creator notifications continue to show direct Hire Now requests.

## Account roles
Register or log in as either Creator / Editor or Client / Hirer.

## Demo marketplace data
A fresh CreatrHub install is pre-populated with fictional Indian creator profiles across all four creative categories, plus sample Community hiring posts from fictional Indian clients.

Demo accounts use the password `Demo@12345`.
- Creator demo emails: `aarav.mehta@creatrhub.demo`, `ishita.sharma@creatrhub.demo`, `rohan.kapoor@creatrhub.demo`, etc.
- Client demo emails: `rahul.khanna@creatrhub.demo`, `simran.kapoor@creatrhub.demo`, `karan.arora@creatrhub.demo`, `nidhi.shah@creatrhub.demo`

These are fictional demo accounts intended for testing and presentation. Demo data is inserted only when those accounts do not already exist.


## Demo accounts
- Creator / Editor: aarav.mehta@creatrhub.demo
- Client / Hirer: rahul.khanna@creatrhub.demo
- Password for seeded demo accounts: `Demo@12345`

This version also hardens the Hire Now flow for older local SQLite databases and returns a useful server-side error instead of a generic message.
