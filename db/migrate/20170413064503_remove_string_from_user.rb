class RemoveStringFromUser < ActiveRecord::Migration[5.0]
	def change
		remove_column :users, :string
	end
end
