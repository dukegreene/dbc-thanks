class Message < ApplicationRecord
  validates_presence_of :title, :body

  def display_title
    title.split(" ").map{ |word| word.capitalize }.join(" ")
  end
end
