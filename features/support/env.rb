# frozen_string_literal: true

require 'appium_console'
require 'appium_lib'
require 'cucumber'
require 'pry'
require 'selenium-webdriver'
require 'report_builder'
require 'rspec'
require 'require_all'
require 'yaml'

FileUtils.rm_f(Dir.glob('log/*.json'))
FileUtils.rm_f(Dir.glob('log/screenshots/*.png'))

caps = Appium.load_appium_txt file: File.expand_path("caps/appium.txt", __dir__), verbose: true

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object