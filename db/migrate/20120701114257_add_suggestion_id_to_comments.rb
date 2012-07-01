class AddSuggestionIdToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :suggestion_id, :integer
  end
end
