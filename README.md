# CrudBoilerPlate

1. `cd Desktop(or whatever)`
2. `git clone https://github.com/AaronStackBarnes/CrudBoilerPlate.git`
3. `git co -b (solo branch name)`
4. `git remote set-url origin (URL to git repo you want to push to)`

#### When Starting With a Blank Skeleton

1.  `bundle install`
2.  `shotgun config.ru`
3.  `bundle exec rake db:drop`
4.  `bundle exec rake db:create`

As needed, create models & migrations with the `rake` tasks:

```
rake generate:migration  # Create an empty migration in db/migrate, e.g., rake generate:migration NAME=create_users
rake generate:model      # Create an empty model in app/models, e.g., rake generate:model NAME=User
```
### Migrations
Migration Syntax
```
class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, null: false
      t.string :password_digest, null: false

      t.timestamps
    end
  end
end
```

#### Models
Model Syntax
```
class User < ActiveRecord::Base
  has_secure_password

  validates :email, :presence => true, :uniqueness => true # Built-in ActiveRecord validation method
  validate :email_must_be_more_than_two_char               # Custom ActiveRecord validation method

  def email_must_be_more_than_two_char                     # Custom ActiveRecord validation method definition
    if email.length < 1
      errors.add(:email, "Email needs to be at least 2 characters")
    end
  end
end
```

### Next Steps
After creating all migrations and models...
1.  Populate seed file (if one does not exist, create one under db folder)
2.  `bundle exec rake db:migrate`
3.  `bundle exec rake db:seed`

### CRUD
* Protecting Routes
* Error Handling
* Naming conventions
* Partials
* Form partials
* methods for error handling
