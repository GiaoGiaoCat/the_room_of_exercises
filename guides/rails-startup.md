## gems

```ruby
group :development do
  gem 'brakeman', require: false
  gem 'rails_best_practices', require: false
end

group :test do
  gem 'sqlite3'
  gem 'minitest-focus'
  gem 'minitest-reporters'
  gem 'database_cleaner'
end
```

* `require: false` 的意思是，跑 `rails s` 的时候不会调用这个 gem。
* 每次 commit 之前利用 `brakeman` 和 `rails_best_practices .` 检查项目的安全性。
* `rake test` 确保测试通过。

### test_helper.rb

```ruby
ENV["RAILS_ENV"] = "test"
require File.expand_path("../../config/environment", __FILE__)
require "rails/test_help"
require "minitest/rails"

# To add Capybara feature tests add `gem "minitest-rails-capybara"`
# to the test group in the Gemfile and uncomment the following:
# require "minitest/rails/capybara"

# Uncomment for awesome colorful output
require "minitest/pride"
require 'minitest/focus'
require "minitest/reporters"
require 'database_cleaner'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
DatabaseCleaner.strategy = :truncation

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  #
  # Fixed: FixtureClassNotFound: No class attached to find
  # http://stackoverflow.com/questions/7020494/how-do-you-solve-fixtureclassnotfound-no-class-attached-to-find
  # http://dev.mensfeld.pl/tag/deprecation-warning/
  set_fixture_class adv_contents: Advertisement
  fixtures :all

  def setup
    DatabaseCleaner.start
  end

  def teardown
    DatabaseCleaner.clean
  end

end
```

### gem 说明

* [minitest-focus](https://github.com/seattlerb/minitest-focus) 可以只运行指定的测试
* [minitest-reporters](https://github.com/kern/minitest-reporters) 让测试结果更美观
* [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner)
