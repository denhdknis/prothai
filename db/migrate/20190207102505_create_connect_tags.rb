class CreateConnectTags < ActiveRecord::Migration[5.2]
  def change
    create_table :connect_tags do |t|
      t.references :product, foreign_key: true
      t.references :tag, foreign_key: true
      t.timestamps
    end
  end
end
