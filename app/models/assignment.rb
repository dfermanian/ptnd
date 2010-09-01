class Assignment < ActiveRecord::Base
#  belongs_to :course 
 
  def self.send_assignment_deadline
    Facebooker::Session.create.send_notification([User.all.map(&:facebook_id).split(',')],"Holy Smokes, something is due today!")
  end
end