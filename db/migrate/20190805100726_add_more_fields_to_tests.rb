class AddMoreFieldsToTests < ActiveRecord::Migration[5.2]
  def change
    add_column :tests, :test_type, :string
    add_column :tests, :no_of_questions, :integer
  end
end
