require 'rails_helper'

describe Message do
  it "doesn't save the message if Twilio gives an error" do
    message = Message.new(:body => 'Hello, Sexy', :to => '123456', :from => '6506847040')
    message.save.should be false
  end
end
