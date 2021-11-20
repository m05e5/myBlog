class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :photo, default: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3Oqk6CV4a1DSvkFJxOUjRoKuZ7pE-Ri7AkA&usqp=CAU"
      t.string :bio

      t.timestamps
    end
  end
end
