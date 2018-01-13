class ChangeTargetVolumnNumberToTargetVolumeNumber < ActiveRecord::Migration[5.1]
  def change
    rename_column :users, :target_volumn_number, :target_volume_number
  end
end
