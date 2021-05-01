lunch_others_targets=()
for device in $(python vendor/hyperx/tools/get_official_devices.py)
do
    for var in user userdebug eng; do
        lunch_others_targets+=("hyperx_$device-$var")
    done
done
