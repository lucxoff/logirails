class CreateArticlesTagsJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_table :articles_tags, id: false do |t|
      t.references :article, null: false
      t.references :tag, null: false
    end

    add_index :articles_tags, [:article_id, :tag_id], unique: true
  end
end