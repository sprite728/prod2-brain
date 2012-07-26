class CreateConfigFiles < ActiveRecord::Migration
  def change
    create_table :config_files do |t|

      t.timestamps
    end
  end
end
