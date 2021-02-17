class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      # has_many :reviews, dependent: :destroy
      t.string :name
      t.string :address
      t.string :phone_number
      t.string :category

      t.timestamps

      # validates :name, :adress, :category, presence: true
    end
  end
end
