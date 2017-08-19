class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :number
      t.string :email
      t.string :bio
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
