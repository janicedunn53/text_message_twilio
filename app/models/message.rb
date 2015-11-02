class Message < ActiveRecord::Base
  before_create :send_message

  private

    def send_message
      response = RestClient::Request.new(
      :method => :post,
      :url => 'https://api.twilio.com/2010-04-01/Accounts/AC52d82ae7c4b2992bf077d66205881f71/Messages',
      :user => 'AC52d82ae7c4b2992bf077d66205881f71',
      :password => '773d93794d5d0167b8ac49615ac10150',
      :payload => { :Body => body,
                    :To => to,
                    :From => from }
      ).execute
    end
end
