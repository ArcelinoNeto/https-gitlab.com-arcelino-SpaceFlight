class AddArticleToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :article, foreign_key: true
  end
end
