class CreateApiSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :api_songs do |t|
      t.string :index
      t.string :create
      t.string :update
      t.string :destroy

      t.timestamps
    end
  end
end
