# LarpLog (Working Title)

LarpLog is a tool for larpers to record games and runs that they've played so they can keep track of memories and gamers. This is an independent project inspired by [Larp Resume](http://larpresume.boldlygoingnowhere.org/). However, after using it, we wanted to expand functionality and add more granular privacy control for users so they can better curate their larp memories and experiences online.

# System Requirements

- Ruby 2.4.0p
- Rails 5.0.1
- Postgres 9.6.2
- Internet access

# Getting started

1. Fork the repo

 [The parent repo lives here](https://github.com/LARPResumeHackathon/larp-resume-site)

2. Clone your fork to your local machine

 HTTPS: `https://github.com/your_username/larp-resume-site.git`

 SSH: `git@github.com:your_username/larp-resume-site.git`

3. Install RVM. We recommend installing RVM stable with ruby

 `\curl -sSL https://get.rvm.io | bash -s stable --ruby`

4. `rvm use 2.4.0` to get the correct Ruby version

5. `gem install bundler` for Ruby package management

6. `bundle install` to get the Gemfile requirements

7. `brew install postgres` to get Postgres. We are using version 9.6.2 at the time this project is created.

 Follow instructions in your terminal after postgres is done installing to get postgres running locally on your machine.

8. Run `rake setup` to create the development and test databases that will be used in this project. NOTE: this will drop (if they exist) then create the databases. Active rails sessions interfere with this process. Be aware of this.

# Workflow

### NOTE: This project has adopted the Contributor Covenant as our Code of Conduct. We use the latest version available on the contributor covenant website. Please refer to [The Contributor Covenant Website](http://contributor-covenant.org/) for more information.

1. Create your own fork of the [larp-resume-site repo](https://github.com/LARPResumeHackathon/larp-resume-site)

2. Make changes in a local branch of your fork. Open a pull request from your fork to the parent repo's master branch when you are ready to check in your work.

  *We use WaffleBot integration!* It's pretty cool. To use it, when you create a branch for an issue, name the branch like this:

  `[issue-number]-name-of-branch` for instance: `3-add-rake-setup-task`

  *Please resolve merge conflicts before requesting a review from one of the maintainers.*

3. A note on commit messages:

  When you create a commit message, please make it descriptive. If your commit message is directly related to an open issue, please include `closes #[issue-number]`. For instance: `closes #3`

4. Maintainers of the repo will review your pull request. When your pull request is approved we will squash and merge the commits.

5. You can view open issues for the project on our [waffle.io](https://waffle.io/LARPResumeHackathon/larp-resume-site) board. You can find our user stories on our [trello](https://trello.com/b/tDvLnxJ0) board.

## Core Contributors

- [stephmarx](https://github.com/stephmarx)
- [korey-enright](https://github.com/korey-enright)
- [cmho](https://github.com/cmho)
- [thejessleigh](https://github.com/thejessleigh)
