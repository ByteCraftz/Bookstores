# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
    # app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
    def login
      username = params[:username]
      password = params[:password]
      hak_akses = params[:hak_akses]
  
      # Find the user with the given username
      user = User.find_by(username: username)
  
      # If the user exists and the password is correct, set a session variable to indicate that the user is logged in
      if user&.authenticate(password)
        session[:user] = { username: user.username, hak_akses: user.hak_akses }
        redirect_to root_path
      else
        # If the login fails, display an error message
        flash[:error] = "Invalid username or password"
        render :index
      end
    end
  end
  
    private
  
    def authenticate(username, password, hak_akses)
      # Add your authentication logic here
      # Return true if the username, password, and hak_akses are correct
      # Return false otherwise
      true
    end
  end