## TWRP device tree for Wingtech Redmi 2 (wt88047)

Add to `.repo/local_manifests/wt88047.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project name="TeamWin/android_device_wingtech_wt88047" path="device/wingtech/wt88047"  remote="github" revision="android-7.1" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_wt88047-eng
mka recoveryimage
```

Kernel sources are available at: https://github.com/LineageOS/android_kernel_wingtech_msm8916
