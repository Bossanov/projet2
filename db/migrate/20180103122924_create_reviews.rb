class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :review_title
      t.text :review_content
      t.integer :rating
      t.string :review_status

      t.timestamps
    end
  end
end
