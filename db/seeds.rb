# frozen_string_literal: true

# Create default admin users
admins = {
  ENV["DEFAULT_EMAIL"] => "Administrador",
}

admins.each do |email, name|
  next if Admin.find_by(email: email)

  Admin.create!(
    email:,
    name:,
    password: ENV["DEFAULT_PASSWORD"],
    password_confirmation: ENV["DEFAULT_PASSWORD"],
  )
end

# Create default user
User.find_or_create_by(email: "user@user.com") do |user|
  user.password = 123456
  user.password_confirmation = 123456
end
