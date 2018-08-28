class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :background
      t.string :payment

      t.timestamps
    end
  end
end
