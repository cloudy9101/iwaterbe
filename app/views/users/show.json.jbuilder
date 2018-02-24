json.(@user, :email, :mobile, :name, :bio, :gender, :age)
json.avatar @user.avatar_or_default
json.currentVolumeNumber @user.current_volume_number(Date.today)
json.targetVolumeNumber @user.target_volume_number
