class CreateAttendances < ActiveRecord::Migration[6.0]
  def change
    create_table :attendances do |t|
      t.string :stripe_custommer_id
            t.belongs_to :event, index: true
			t.references :participant, index: true

      t.timestamps
    end
  end
end
