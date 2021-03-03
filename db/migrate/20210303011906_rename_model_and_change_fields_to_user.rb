class RenameModelAndChangeFieldsToUser < ActiveRecord::Migration[6.0]
  def change
    rename_table :users, :usuarios
    rename_column :usuarios, :name, :nombre
  end
end
