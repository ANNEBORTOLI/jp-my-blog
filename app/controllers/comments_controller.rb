# frozen_string_literal: true

class CommentsController < ApplicationController
  def index
    @article = Article.find(params[:article_id])
    @comments = @article.comments

    p("*" * 100)
    p(@comments)
    p("*" * 100)
  end
end

# "fdbbc9a4-354d-427f-b08f-3ea57946c881"
