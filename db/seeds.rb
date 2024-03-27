# frozen_string_literal: true

# Create default admin users
admins = ["admin@admin.com", "test@test.com"]

admins.each do |email|
  next if Admin.find_by(email: email)

  Admin.create!(
    email:,
    password: ENV["DEFAULT_PASSWORD"],
    password_confirmation: ENV["DEFAULT_PASSWORD"],
  )
end
