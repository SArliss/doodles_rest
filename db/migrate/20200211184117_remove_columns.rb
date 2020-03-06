class RemoveColumns < ActiveRecord::Migration[6.0]
  def self.up
    remove_column :categories, :doodle_id
  end
end
