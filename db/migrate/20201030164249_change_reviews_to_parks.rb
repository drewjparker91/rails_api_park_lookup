class ChangeReviewsToParks < ActiveRecord::Migration[5.2]
  def change
    rename_table :reviews, :parks
  end
end
