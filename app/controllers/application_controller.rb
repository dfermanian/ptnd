#---
# Excerpted from "Developing Facebook Platform Applications with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/mmfacer for more book information.
#---
class ApplicationController < ActionController::Base
  helper :all # include all helpers, all the time
  attr_accessor :current_user
  before_filter :set_current_user
  helper_attr :current_user
  def set_current_user 
    self.current_user = User.for(facebook_session.user.to_i)
  end

  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery  :secret => '18e9cdc10e7eea6e47eaba637b37339a'
  ensure_authenticated_to_facebook
 end
