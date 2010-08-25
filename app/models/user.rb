class User < ActiveRecord::Base
  acts_as_authentic

  validates_uniqueness_of :email, :facebook_uid

  def before_connect(facebook_session)
    self.name = facebook_session.user.name
  end 
end