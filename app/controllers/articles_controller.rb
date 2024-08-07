# frozen_string_literal: true

class ArticlesController < ApplicationController
  def index
    @category = Category.find(params[:category_id])
    @articles = @category.articles
  end

  def show
    @article = Article.includes(:category, :author, comments: :user).friendly.find(params[:id])
    @other_articles = Article.all.sample(3)
    # @other_articles = Article.all.take(3) # same article always
    @comments = comments_sorted_by
  end

  private

  def comments_sorted_by
    return @article.comments.order(created_at: :desc) if params[:sort_by] == "more_recents"

    @article.comments.order(created_at: :asc)
  end
end
