# GalaxyMap

Hello, and welcome to the Galaxy Map CLI application. This application is an in-universe data grabber set in the Star Wars franchise!

Using HTTParty to retrieve data from [SWAPI](https://swapi.dev/), the Star Wars API, Galaxy Map allows user interaction within the command-line terminal by using creating new instances of Ruby classes. These classes represent various data from the first six Star Wars films and made visible to the user to be accessed.

As this is an in-universe application, the user interface is designed to appear to the user as if they're accessing the Jedi Archives on Coruscant themselves! Discover 20 of the planets featured in the films as well as the many characters that appear in the films!

Enjoy!

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'galaxy_map'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install galaxy_map

## Usage

To access the Galaxy Map, run the start file located in the bin folder (./bin/start). Make sure that you're in the correct file location for it to properly run! Once the interface is loaded, the user will be greeted with a message and then an array of planets will be listed to choose from, with ~20 planets to select. The user can select which planet in the terminal by typing the number of the specific planet they wish to learn about. Once a planet is selected, a prompt will appear inquiring whether the user wishes to learn about the inhabitants of each planet. The application will run on simple yes/no responses, and will break if the user chooses no. By choosing yes, the information will be displayed in the terminal.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/electroniquefleak/galaxy_map. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/electroniquefleak/galaxy_map/blob/master/CODE_OF_CONDUCT.md).


## Code of Conduct

Everyone interacting in the GalaxyMap project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/electroniquefleak/galaxy_map/blob/master/CODE_OF_CONDUCT.md).