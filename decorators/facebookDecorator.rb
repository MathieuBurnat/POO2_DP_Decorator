class FacebookDecorator
    def send(message)
        puts ">#{self} : #{message}"
    end
end