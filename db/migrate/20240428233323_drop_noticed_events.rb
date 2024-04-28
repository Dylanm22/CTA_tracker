class DropNoticedEvents < ActiveRecord::Migration[7.0]
  def change
    drop_table :noticed_events
  end
end
