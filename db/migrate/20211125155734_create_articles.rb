class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.boolean :featured
      t.string :title
      t.string :url
      t.string :imageUrl
      t.string :newsSite
      t.string :summary
      t.string :publishedAt
      
      t.timestamps
    end
  end
end
