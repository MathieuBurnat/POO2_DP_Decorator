class SlackDecorator
    def send(message)
        puts ">#{self} : #{message}"
    end
end