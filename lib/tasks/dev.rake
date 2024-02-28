# frozen_string_literal: true

namespace :dev do
  desc "Add articles to the database"
  task add_articles: :environment do
    show_spinner("Adding articles to the database") { add_articles }
  end

  # Para adicionar uma nova task e continuar usando o show_spinner
  # desc "New task description..."
  # task do_something: :environment do
  #   show_spinner("Bla bla bla") { new_method }
  # end

  def add_articles
    50.times do
      Article.create(
        title: Faker::Lorem.sentence.delete("."),
        body: Faker::Lorem.paragraph(sentence_count: rand(100..200)),
      )
    end
  end

  def show_spinner(msg_start, msg_end = "Done!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")
  end
end
