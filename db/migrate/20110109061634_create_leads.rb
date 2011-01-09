class CreateLeads < ActiveRecord::Migration
  def self.up
    create_table :leads do |t|
      t.string :firstName
      t.string :lastName
      t.string :sex
      t.string :familySize
      t.string :streetAddress
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :timeToCall

      t.timestamps
    end
  end

  def self.down
    drop_table :leads
  end
end
