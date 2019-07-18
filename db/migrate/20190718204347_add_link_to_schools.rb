class AddLinkToSchools < ActiveRecord::Migration[5.2]
  def change
    add_column :schools, :link, :string
  end
end
