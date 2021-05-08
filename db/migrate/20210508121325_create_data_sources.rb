class CreateDataSources < ActiveRecord::Migration[6.1]
  def change
    create_table :data_sources do |t|
      t.string :name
      t.string :host
      t.string :username
      t.string :password
      t.string :port, default: '3306'
      t.string :database
      t.string :encoding, default: 'utf8mb4'

      t.timestamps
    end
  end
end
