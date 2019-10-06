class AddEmailToTodo < ActiveRecord::Migration[5.2]
  def change
    add_column :lists, :email, :string
  end
end
