class RenameTypeToLetter < ActiveRecord::Migration[6.0]
  def change
    rename_column :sizes, :type, :letter
  end
end
