class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.integer :user_id
      t.string :device_name
      t.text :assets
      t.string :internal_address
      t.string :primary_internal_protocol
      t.string :port
      t.string :external_address
      t.string :necessary_external_protocol_port
      t.string :external_credentials
      t.string :internal_credentials

      t.timestamps
    end
  end
end
