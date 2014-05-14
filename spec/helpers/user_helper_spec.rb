def create_fake_user
  User.create!({
    first_name: "user",
    last_name: "name",
    username: "username",
    email: "username@example.com"
  })
end