
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
Based on [DrMoriarty](https://github.com/DrMoriarty)'s [Godot iOS Plugin Template](https://github.com/DrMoriarty/godot_ios_plugin_template)

Developed by [Cengiz](https://github.com/cengiz-pz)

Original repository: [Godot iOS In-app Review Plugin](https://github.com/cengiz-pz/godot-ios-inapp-review-plugin)
