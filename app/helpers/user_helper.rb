helpers do
  def create_user
    user = User.create(params[:user])
    if user.valid?
      session[:user_id] = user.id
      redirect '/'
    else
      status 422
      @errors = user.errors.full_messages
      erb :'users/new'
    end
  end

 def login
   user = User.find_by(email: params[:user][:email])
   if user
     if user.authenticate(params[:user][:password])
       session[:user_id] = user.id
       redirect '/'
     else
       @errors = ["Incorrect Username or Password"]
       erb :'sessions/new'
     end
   else
     status 422
     @errors = ["Input Username or Password"]
     erb :'sessions/new'
   end
 end

 def logged_in?
   !!@user
 end

 def find_user
   if session[:user_id]
     @user ||= User.find(session[:user_id])
   end
 end

 def mine?(id)
   find_user
   if logged_in?
     @user.id == id
   end
 end



end
