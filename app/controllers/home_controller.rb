class HomeController < ApplicationController
    def index
        if session[:user]
          # If the user is logged in, display the menu
          @menu_visible = true
        else
          # If the user is not logged in, keep the menu hidden
          @menu_visible = false
        end
    end
  
    def login
      username = params[:username]
      password = params[:password]
      hak_akses = params[:hak_akses]
  
      # Add your authentication logic here
      # For example, you can check if the username and password are correct and match a user in your database
  
      if authenticate(username, password, hak_akses)
        # Set the session variable to indicate that the user is logged in
        session[:user] = { username: username, hak_akses: hak_akses }
        redirect_to root_path
      else
        # Display an error message if the login fails
        flash[:error] = "Invalid username or password"
        render :index
      end
    end
  
    private
  
    def authenticate(username, password, hak_akses)
      # Add your authentication logic here
      # Return true if the username and password are correct, and the hak_akses is valid
      # Return false otherwise
      true
    end
  end