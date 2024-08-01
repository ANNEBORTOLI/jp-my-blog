# frozen_string_literal: true

class AddGithubProfileUrlToAuthors < ActiveRecord::Migration[7.1]
  def change
    add_column(:authors, :github_profile_url, :string)
  end
end
