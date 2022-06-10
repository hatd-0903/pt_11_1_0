class CreateProgresses < ActiveRecord::Migration[6.1]
  def change
    create_table :progresses do |t|
      t.string :name
      t.float :rate

      t.timestamps
    end
  end
end
