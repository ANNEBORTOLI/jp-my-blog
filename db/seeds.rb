# frozen_string_literal: true

# Create default admin users
admins = {
  "admin@admin.com" => "Administrador",
  "test@test.com" => "Teste",
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
