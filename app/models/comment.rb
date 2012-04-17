class Comment < ActiveRecord::Base
  belongs_to :commentable, :polymorphic => true, :dependent => :destroy
  
  validates_presence_of :content, :name, :email
  
  email_regex = /^\w+(\w.)*\w+@\w+(.com|.net|.edu)$/
  validates_format_of :email, :with => email_regex
  
end

