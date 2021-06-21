require "./decorators/smsDecorator"
require "./decorators/facebookDecorator"
require "./decorators/slackDecorator"

require 'yaml'

class BaseDecorator
    def initialize
        @decorators = []

        config = YAML.load_file('./config.yml')

        if config.dig("SMS_Enabled")
            addDecorator(SMSDecorator.new)
        end

        if config.dig("facebookEnabled")
            addDecorator(FacebookDecorator.new)
        end

        if config.dig("SlackEnabled")
            addDecorator(SlackDecorator.new)
        end
    end

    def addDecorator(decorator)
        @decorators.push(decorator)
    end

    def send(message)
        @decorators.each do |decorator|
            decorator.send(message)
        end
    end
end
