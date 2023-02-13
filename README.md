# README


# Run

1. bundle install
2. yarn install --check-files
3. rake db:migrate:reset
4. rake db:seed
5. rails s

#Create Admin
1. Create a new account
2. cancel server by ctrl C 
3. rails c
4. @user=User.second (if  there is a user) || User.first (if there is no user)
5. @user.admin=true
6. @user.save
7. Crtl D
8. rails s