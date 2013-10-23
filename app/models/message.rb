class Message < ActiveRecord::Base
  attr_accessible :email, :name, :subject, :body, :new

  validate :email, :name, :subject, :body, presence: true
  validate :email, format: {with: Devise::email_regexp}
end
