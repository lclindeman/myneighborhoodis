class AddSubmitterNameToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :submitter_name, :string
  end
end
