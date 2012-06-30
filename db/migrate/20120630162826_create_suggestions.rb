class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.integer :user_id
      t.string :title
      t.string :description
      t.string :file

      t.timestamps
    end
  end
end
