class CreateEmails < ActiveRecord::Migration
  def change
    create_table :emails do |t|
      t.string :message
      t.string :subject

      t.timestamps
    end
  end
end
