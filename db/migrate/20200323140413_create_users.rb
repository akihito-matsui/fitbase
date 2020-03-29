class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.string :age
      t.string :resident
      t.string :birthplace
      t.string :training_place
      t.string :frequency
      t.string :objective
      t.string :protein_supplement
      t.string :music
      t.string :speakout
      t.string :message
      t.string :email
      t.string :password_digest
      t.string :profile_picture
      
      t.timestamps
    end
  end
end
