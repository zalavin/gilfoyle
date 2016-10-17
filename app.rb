require 'sinatra'
require 'yaml'
require 'redis'
require 'sidekiq'

CONFIG = YAML.load_file("config/example.yml")

require_relative 'models/message/base'
require_relative 'models/message/creator'
require_relative 'models/message/validator'
require_relative 'models/message/error'
require_relative 'models/message/encryptor'
require_relative 'models/message/finder'
require_relative 'models/message/destroy_worker'

require_relative 'controller'
