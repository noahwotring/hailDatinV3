class AddInterestsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :interests, :text
  end
end
