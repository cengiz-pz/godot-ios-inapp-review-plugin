$${\color{red}16/08/2025: \space This \space repository \space has \space moved \space under \space the \space Godot \space SDK \space Integrations \space Github \space organization.}$$
$${\color{red}Future \space releases \space will \space be \space published \space at \space the \space new \space repository:}$$

### https://github.com/godot-sdk-integrations/godot-inapp-review

<br/><br/>

<p align="center">
  <img width="256" height="256" src="demo/inappreview.png">
</p>

---
# ![](addon/icon.png?raw=true) In-app Review Plugin
Godot In-app Review Plugin enables access to Apple App Store's in-app review functionality.

## ![](addon/icon.png?raw=true) Installation
There are 2 ways to install the `In-app Review Plugin` into your project:
- Through the Godot Editor's AssetLib
- Manually by downloading archives from Github

### ![](addon/icon.png?raw=true) Steps to install via AssetLib
- search for and select the `In-app Review Plugin` in Godot Editor's AssetLib tab
- click `Download` button
- on the installation dialog...
  - leave your project's root directory selected as the target directory
  - leave `Ignore asset root` checkbox checked
  - click `Install` button
- enable the plugin via the `Plugins` tab of `Project->Project Settings...` menu, in the Godot Editor

### ![](addon/icon.png?raw=true) Manual installation steps
- download release archive from Github
- unzip the release archive
- copy contents of the unzipped directory into your project's root directory
- enable the plugin via the `Plugins` tab of `Project->Project Settings...` menu, in the Godot Editor

<br/><br/>

## ![](addon/icon.png?raw=true) Usage
Add an `InappReview` node to your scene and follow the following steps:
- register listeners for the following signals emitted from the `InappReview` node
	- `review_flow_launched`
- call the `launch_review_flow()` of the `InappReview` node
	- Apple's StoreKit API will display a review dialog
	- Dialog may not be displayed if the review flow was launched recently
- normal app functionality can resume when `review_flow_launched` signal is received

<br/><br/>

## ![](addon/icon.png?raw=true) Export to iOS
Follow instructions on the following page to export your project and run on an iOS device:
- [Exporting for iOS](https://docs.godotengine.org/en/stable/tutorials/export/exporting_for_ios.html)

<br/><br/><br/>

---
# ![](addon/icon.png?raw=true) Credits
Developed by [Cengiz](https://github.com/cengiz-pz)

Based on [DrMoriarty](https://github.com/DrMoriarty)'s [Godot iOS Plugin Template](https://github.com/DrMoriarty/godot_ios_plugin_template)

Original repository: [Godot iOS In-app Review Plugin](https://github.com/cengiz-pz/godot-ios-inapp-review-plugin)

<br/><br/><br/>


___

# ![](addon/icon.png?raw=true) Contribution

This section provides information on how to build the plugin for contributors.

<br/>

___

## ![](addon/icon.png?raw=true) Prerequisites

- [Install SCons](https://scons.org/doc/production/HTML/scons-user/ch01s02.html)
- [Install CocoaPods](https://guides.cocoapods.org/using/getting-started.html)

<br/>

___

## ![](addon/icon.png?raw=true) Build

- Run `./script/build.sh -A <godot version>` initially to run a full build
- Run `./script/build.sh -cgA <godot version>` to clean, redownload Godot, and rebuild
- Run `./script/build.sh -ca` to clean and build without redownloading Godot
- Run `./script/build.sh -h` for more information on the build script

<br/>

___

## ![](addon/icon.png?raw=true) Git addon submodule


### ![](addon/icon.png?raw=true) Creating

- `git submodule add -b main --force --name addon https://github.com/cengiz-pz/godot-inapp-review-addon.git addon`


### ![](addon/icon.png?raw=true) Updating

- Remove `addon` directory
- Run `git submodule update --remote --merge`

<br/>

___

## ![](addon/icon.png?raw=true) Libraries

Library archives will be created in the `bin/release` directory.

<br/><br/>

---
# ![](addon/icon.png?raw=true) All Plugins

| Plugin | Android | iOS |
| :---: | :--- | :--- |
| Notification Scheduler | https://github.com/cengiz-pz/godot-android-notification-scheduler-plugin | https://github.com/cengiz-pz/godot-ios-notification-scheduler-plugin |
| Admob | https://github.com/cengiz-pz/godot-android-admob-plugin | https://github.com/cengiz-pz/godot-ios-admob-plugin |
| Deeplink | https://github.com/cengiz-pz/godot-android-deeplink-plugin | https://github.com/cengiz-pz/godot-ios-deeplink-plugin |
| Share | https://github.com/cengiz-pz/godot-android-share-plugin | https://github.com/cengiz-pz/godot-ios-share-plugin |
| In-App Review | https://github.com/cengiz-pz/godot-android-inapp-review-plugin | https://github.com/cengiz-pz/godot-ios-inapp-review-plugin |
