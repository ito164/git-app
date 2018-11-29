class CreateSrticles < ActiveRecord::Migration[5.2]
  def change
    create_table :srticles do |t|
      t.string :title
      t.string :suthor
      t.text :body

      t.timestamps
    end
  end
end
