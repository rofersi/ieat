class HomeController < ApplicationController
  def index
    @email = user_signed_in? ? current_user.email : 'Não Logado' 
  end
end
