# frozen_string_literal: true

class Category < ApplicationRecord
  has_many :articles, dependent: :nullify # in case a category is deleted, the article category name is null

  has_one_attached :cover_image
end
