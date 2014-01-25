class DropTableEmails < ActiveRecord::Migration
  def up
    drop_table :emails
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
