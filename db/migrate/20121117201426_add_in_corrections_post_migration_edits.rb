class AddInCorrectionsPostMigrationEdits < ActiveRecord::Migration
  def self.up
    add_column :workflows, :site_id, :integer
    add_column :workflows, :model_id, :integer, :null => false
    add_column :workflows, :hostname, :string
    add_column :workflows, :params, :string
        
    rename_column :workflows, :outdir, :folder
  end

  def self.down
    remove_column :workflows, :site_id
    remove_column :workflows, :model_id
    remove_column :workflows, :hostname
    remove_column :workflows, :params
        
    rename_column :workflows, :folder, :outdir
  end
end
