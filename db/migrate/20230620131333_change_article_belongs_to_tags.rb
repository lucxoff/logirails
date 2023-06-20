class ChangeArticleBelongsToTags < ActiveRecord::Migration[7.0]
  def change
    change_table :tags do |t|
      t.remove_references :article
    end
    change_table :articles do |t|
      t.belongs_to :tags
    end
  end
end