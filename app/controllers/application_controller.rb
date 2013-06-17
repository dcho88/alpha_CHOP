class ApplicationController < ActionController::Base
  protect_from_forgery
   
  before_filter :authenticate_user!

  def after_sign_in_path_for(user)
    snps_path
  end
  
  def after_sign_out_path_for(user)
    home_index_path
  end

end