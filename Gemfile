source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

gem 'jquery-rails'
gem 'simple_form'
gem 'devise'
gem 'haml-rails', '~> 0.9.0'
gem 'bourbon', '~> 5.0.0.beta.8'
gem 'neat', '~> 2.1'
gem 'autoprefixer-rails'
gem 'normalize-rails', '~> 4.1', '>= 4.1.1'

gem 'carrierwave'
gem 'cloudinary'
gem 'rmagick'

gem 'friendly_id', '~> 5.1.0'
gem 'ransack'
gem 'kaminari'

gem 'newrelic_rpm'

group :production do
  gem 'rails_12factor'
end
group :development, :test do
  gem 'pry', '~> 0.11.1'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.15', '>= 2.15.4'
  gem 'selenium-webdriver'
  gem 'guard'
  gem 'guard-livereload'
  gem 'guard-rspec'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'database_cleaner'
  gem 'shoulda-matchers', '~> 3.0'

end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
