class RemoveReviewFromRestaurant < ActiveRecord::Migration[5.2]
  def change
    remove_column :restaurants, :review_id
  end
end
