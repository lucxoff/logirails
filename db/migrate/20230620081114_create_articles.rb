class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :body
      t.text :shortdesc
      t.boolean :featured

      t.timestamps
    end
  end
end
