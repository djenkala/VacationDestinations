class ChangeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :destinations, :content, :description
  end
end
