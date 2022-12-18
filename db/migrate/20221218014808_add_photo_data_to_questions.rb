class AddPhotoDataToQuestions < ActiveRecord::Migration[7.0]
  def change
    add_column :questions, :photo_data, :jsonb
    remove_column :questions, :photo
  end
end
