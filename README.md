# jirasaur 
It's a timetracking app intended to work along with Slack slash commands

* Report start time and end time of each task including meetings & breaks
* Report it down throughout the day
* App automatically calculates data for scrum’s reports real effort
* Individual can effectively track how much time spent on work-related tasks (jira tasks, support tasks i.e. helping others, * meetings) and how much time was spent on private things (i.e. lunch, other activities)
* Offers 3rd person perspective on your efforts -  with raw data you know how “effective” is your everyday approach, no room to bs yourself
* With that knowledge and some self-discipline one can boost it’s individual performance and improve team results in meeting sprint’s goals


## Installation
* Deploy app to your server (i.e. heroku)
* Run migrations 
``` rake db:migrate```
* Populate database
``` rake db:seed ```
* Make sure its running
* Add new slash command to your Slack team

## Usage
From you slack channel run </br>
```/commandname taskname tasktype(optional) timetaskstarted(optional)```

See wiki for a full example

## Learn More
 * Slack slash commands - https://api.slack.com/slash-commands
 * Heroku - https://www.heroku.com

## License
The app is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
