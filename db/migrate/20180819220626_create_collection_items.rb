class CreateCollectionItems < ActiveRecord::Migration[5.2]
  def change
    create_table :collection_items do |t|
      t.string :attr_01
      t.string :attr_02
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
