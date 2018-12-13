class RenameTable < ActiveRecord::Migration[5.2]
  def self.up
    rename_table :mails, :pirate_mails
  end

  def self.down
    rename_table :pirate_mails, :mails
  end
end