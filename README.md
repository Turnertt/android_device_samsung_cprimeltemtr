<p align="center">
![linoslogo](https://avatars1.githubusercontent.com/u/24304779?v=3&s=200)
<p align="center">
#(Work in Progress) LineageOS Device Configuration for the Samsung Galaxy Core Prime (G360T1).

In order to build LineageOS yourself, you must first setup a build environment. Instructions to do that can be found [here](https://source.android.com/source/initializing.html).

Once you setup a build environment, initialize the LineageOS repo in your working directory using this command:
> repo init -u git://github.com/LineageOS/android.git -b cm-12.1

Next, initialize the device repositories, using this command:
> curl --create-dirs -L -o .repo/local_manifests/local_manifest.xml -O -L https://raw.githubusercontent.com/PlatinumMaster/android_local_manifest-cprimeltemtr/cm-12.1/local_manifest.xml

Finally, to start syncing, run this command:
> repo sync


Once you finished syncing, run these commands to build LineageOS:
> . build/envsetup.sh && brunch lineage_cprimeltemtr-userdebug
