# frozen_string_literal: true

class ArticlesController < ApplicationController
  def show
    @article = Article.includes(:category, :author).friendly.find(params[:id])
    @other_articles = Article.all.sample(3)
    # @other_articles = Article.all.take(3) # same article always
  end
end
