class AddArticleToLaunch < ActiveRecord::Migration[5.2]
  def change
    add_reference :launches, :article, foreign_key: true
  end
end
