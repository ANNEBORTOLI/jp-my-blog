# frozen_string_literal: true

class Author < ApplicationRecord
  has_many :articles, dependent: :nullify # in case an author is deleted, the author name is null
end
