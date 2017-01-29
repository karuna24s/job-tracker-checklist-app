class AddTechStackToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :tech_stack, :string
  end
end
