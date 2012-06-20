class CreateEnquiries < ActiveRecord::Migration
  def change
    create_table :enquiries do |t|
      t.string :name
      t.string :email
      t.string :number
      t.string :company
      t.string :address
      t.text :message

      t.timestamps
    end
  end
end
