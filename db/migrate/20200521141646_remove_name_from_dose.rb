class RemoveNameFromDose < ActiveRecord::Migration[6.0]
  def change
    remove_column :doses, :name
  end
end
