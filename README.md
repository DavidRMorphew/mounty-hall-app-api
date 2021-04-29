# The Mounty Hall App API

## Purpose and Usage
This API is designed to calculate and persist game results data and user statistical data for the [Mounty Hall App](https://github.com/DavidRMorphew/mounty-hall-app-frontend).

First, fork this API.

You can then type this command in your terminal to clone the API:

```
git clone git@github.com:DavidRMorphew/mounty-hall-app-api.git
```


## Starting the API Server

Once you've installed the API, open the API's directory:
```
cd mounty-hall-app-api
```
Before starting, be sure to run:
```
bundle install
```

To get the API server running, run the following command in the terminal:

```
rails s
```

To stop the server, press `ctrl + c`.
## Seed Data

If you would like to take advantage of some seed data I have provided, run:
```
rails db:seed 
``` 
Then stop and restart the server.

## License
The app is open source under the terms of the [MIT License]