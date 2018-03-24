class CreateImages < ActiveRecord::Migration[5.1]
  def change
    create_table :images do |t|
      t.string :owner
      t.string :tagline

      t.timestamps
    end
  end
end
