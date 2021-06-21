class SMSDecorator
    def send(message)
        puts ">#{self} : #{message}"
    end
end