class Message < ActiveRecord::Base
  attr_accessible :email, :name, :subject, :body, :new

   validates :email, :name, :subject, :body, presence: true
   validates :email, format: {with: Devise::email_regexp}

after_create :delete_message_after_sent
private

  def delete_message_after_sent
    self.destroy
  end


end


