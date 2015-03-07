class CreateDiagnoses < ActiveRecord::Migration
  def change
    create_table :diagnoses do |t|
      t.string :name
      t.integer :d_count
      t.integer :i_count
      t.integer :s_count
      t.integer :c_count

      t.timestamps
    end
  end
end
