# app/controllers/sessions_controller.rb
class SessionsController < ApplicationController
    def login
      username = params[:username]
      password = params[:password]
      hak_akses = params[:hak_akses]
  
      # Add your authentication logic here
      # For example, you can check if the username and password are correct and match a user in your database
      if authenticate(username, password, hak_akses)
        # If the login is successful, set a session variable to indicate that the user is logged in
        session[:user] = { username: username, hak_akses: hak_akses }
        # Redirect the user to the index action of the HomeController
        redirect_to root_path
      else
        # If the login fails, display an error message
        flash[:error] = "Invalid username or password"
        render :index
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