require "./baseDecorator"

class Notifier
    def initialize()
        @baseDecorator = BaseDecorator.new
    end

    def send(message)
        @baseDecorator.send(message)
    end
end
