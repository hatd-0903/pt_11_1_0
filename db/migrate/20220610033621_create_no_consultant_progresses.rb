class CreateNoConsultantProgresses < ActiveRecord::Migration[6.1]
  def change
    create_table :no_consultant_progresses do |t|
      t.string :name
      t.float :rate

      t.timestamps
    end
  end
end
