class ChangeCreatedByToBeIntegerInDoodlesTable < ActiveRecord::Migration[6.0]
  def change
    change_column :doodles, :created_by, :integer
  end
end
