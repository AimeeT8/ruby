require 'rubygems'
require 'twilio-ruby'




def random_number
    number = 1 + rand(10)
    return number
end

def outlook(number)
    case number
    when 1
        answer = "This is absolutely a yes!"
    when 2
        answer = "not bloody likely"
    when 3
        answer = "Reply hazy. Try again"
    when 4
        answer = "please check back later"
    when 5 
        answer = "nope"
    when 6 
        answer = "Yes! You crushed it"
    when 7 
        answer = "All signs point to yes!"
    when 8 
        answer = "Without a doubt"
    when 9 
        answer = "Oh yeah!"
    when 10 
        answer = "You know it!"
    end
end


        puts "What is your question?"
        question = gets.chomp
        number = random_number
        answer = outlook(number)



account_sid = "Get account_sid from Twilio"
auth_token = "Get auth_token from Twilio"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.api.account.messages.create(
    :from => "00000000000", 
    :to => "00000000000", 
    :body => "The answer to your question #{question}: #{answer}"
    )

puts message.to


    