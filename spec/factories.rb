# By using the symbol ':user', we get Factory Girl
# to simulate the User model.
Factory.define :user do |user|
  user.name                   "Andrew Wolfhouse"
  user.email                  "awolf@example.com"
  user.password               "foobar42"
  user.password_confirmation  "foobar42"
end

Factory.sequence :email do |n|
  "person-#{n}@example.com"
end

Factory.define :micropost do |micropost|
  micropost.content "Foo bar"
  micropost.association :user
end
