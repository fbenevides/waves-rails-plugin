# Waves Rails plugin
A plugin to extract informations about the waves conditions in Brazil.

[![Build Status](https://travis-ci.org/fbenevides/waves-rails-plugin.svg?branch=master)](https://travis-ci.org/fbenevides/waves-rails-plugin)

[![Code Climate](https://codeclimate.com/github/fbenevides/waves-rails-plugin/badges/gpa.svg)](https://codeclimate.com/github/fbenevides/waves-rails-plugin)

[![Test Coverage](https://codeclimate.com/github/fbenevides/waves-rails-plugin/badges/coverage.svg)](https://codeclimate.com/github/fbenevides/waves-rails-plugin)

# Usage
In your Gemfile:
```
gem 'wapi'
```

Retrieving all conditions of a surf spot:
```
conditions = Wapi::Report.new('/ceara/caucaia/icarai').check
conditions[:name] # Icaraí - Caucaia (CE)
```

# Contributing

1. Fork the project
2. Start a feature/bugfix branch
3. Commit and push
4. Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.