# IMPORTANT: This file is generated by cucumber-rails - edit at your own peril.
# It is recommended to regenerate this file in the future when you upgrade to a
# newer version of cucumber-rails. Consider adding your own code to a new file
# instead of editing this one. Cucumber will automatically load all features/**/*.rb
# files.
require 'coveralls'
Coveralls.wear_merged! 'rails'

ENV['CUCUMBER'] = 'cucumber'

require 'cucumber/rails'
require 'cucumber/rspec/doubles'
require 'capybara/poltergeist'
require 'capybara-screenshot/cucumber'
require 'geocoder/lookups/base'
require 'geocoder/results/freegeoip'
require 'webmock/cucumber'
require 'delorean'

WebMock.disable_net_connect!(:allow_localhost => true)

OmniAuth.config.logger.level = Logger::WARN


Capybara.javascript_driver = :poltergeist
Capybara.default_wait_time = 5
test_options = {
    timeout: 20,
    phantomjs_options:['--ignore-ssl-errors=yes'],
    port: 3010
}
debug_options = {
    inspector: true,
    port: 3010,
    timeout: 10
}
Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new app,test_options
end

Capybara.register_driver :poltergeist_debug do |app|
  Capybara::Poltergeist::Driver.new app, debug_options
end

ActionController::Base.allow_rescue = false

Cucumber::Rails::Database.javascript_strategy = :truncation

Geocoder.configure(:ip_lookup => :test)
Geocoder::Lookup::Test.add_stub(
    '127.0.0.1', [
                   {
                       ip: '127.0.0.1',
                       country_code: 'SE',
                       country_name: 'Sweden',
                       region_code: '28',
                       region_name: 'Västra Götaland',
                       city: 'Alingsås',
                       zipcode: '44139',
                       latitude: 57.9333,
                       longitude: 12.5167,
                       metro_code: '',
                       areacode: ''
                   }.as_json
               ]
)

Before do
  Settings.reload!
end
