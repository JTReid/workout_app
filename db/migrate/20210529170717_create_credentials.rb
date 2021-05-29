class CreateCredentials < ActiveRecord::Migration[6.1]
  def change
    create_table :credentials do |t|
      t.string :institution
      t.string :number
      t.integer :trainer_id

      t.timestamps
    end
  end
end
