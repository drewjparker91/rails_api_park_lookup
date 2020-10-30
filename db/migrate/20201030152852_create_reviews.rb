class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :location
      t.string :review
      t.integer :rating

      t.timestamps
    end
  end
end
