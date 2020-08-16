class CreateCards < ActiveRecord::Migration[6.0]
  def change
    create_table :cards do |t|
      t.string :question
      t.string :answer
      t.string :instruction
      t.string :image

      t.timestamps
    end
  end
end
