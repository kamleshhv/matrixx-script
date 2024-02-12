screen
repo init -u https://github.com/ProjectMatrixx/android.git -b 14.0 --git-lfs
repo sync -c --no-clone-bundle --optimized-fetch --prune --force-sync -j$(nproc --all)
git clone https://github.com/kamleshhv/device_xiaomi_sweet.git -b matrixx device/xiaomi/sweet
git clone https://github.com/LineageOS/android_hardware_xiaomi.git -b lineage-21 hardware/xiaomi
. b*/e*
lunch lineage_sweet-userdebug
make bacon -j8