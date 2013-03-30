#National Holidays

When is the next national holiday in your country? Find out here: [http://national-holidays.herokuapp.com/](http://national-holidays.herokuapp.com/)

A Labs Friday project by [@monfresh](http://github.com/monfresh)

##Development Details

* Ruby version 2.0.0
* Rails version 3.2.13
* Template Engine: ERB
* Front-end Framework: Twitter Bootstrap (Sass)

To install:

    git clone git://github.com/codeforamerica/national-holidays.git
    cd national-holidays
    bundle

To run locally:

    unicorn

Then visit [http://localhost:8080](http://localhost:8080)

The app uses the [geocoder](https://github.com/alexreisner/geocoder) gem to detect the visitor's country based on their IP address. This detection does not work when running the app on localhost, so if you want to test holidays for a specific country, you should replace `country_code.to_sym` on line 10 of [home_controller.rb](https://github.com/codeforamerica/national_holidays/blob/master/app/controllers/home_controller.rb) with the symbol representation of the country's 2-character code, such as `:fr`. 

The country codes that are currently supported are listed in the [data](https://github.com/alexdunae/holidays/tree/master/data) folder of the [holidays](http://https://github.com/alexdunae/holidays gem) gem. If you don't see your country's holidays listed, please add them to the holidays gem project.


##Contributing

If you make improvements to this application, please share with others.

* Fork the project on GitHub.
* Make your feature addition or bug fix.
* Commit with Git.
* Send the author a pull request.

If you add functionality to this application, create an alternative implementation, or build an application that is similar, please contact me and I'll add a note to the README so that others can find your work.

##Credits

This application was generated with the "rails_apps_composer":https://github.com/RailsApps/rails_apps_composer gem provided by the "RailsApps Project":http://railsapps.github.com/.

