#
# © 2024-present https://github.com/cengiz-pz
#
@tool
extends EditorPlugin

const PLUGIN_NODE_TYPE_NAME = "InappReview"
const PLUGIN_PARENT_NODE_TYPE = "Node"
const PLUGIN_NAME: String = "InappReviewPlugin"

var export_plugin: IosExportPlugin


func _enter_tree() -> void:
	add_custom_type(PLUGIN_NODE_TYPE_NAME, PLUGIN_PARENT_NODE_TYPE, preload("InappReview.gd"), preload("icon.png"))
	export_plugin = IosExportPlugin.new()
	add_export_plugin(export_plugin)


func _exit_tree() -> void:
	remove_custom_type(PLUGIN_NODE_TYPE_NAME)
	remove_export_plugin(export_plugin)
	export_plugin = null


class IosExportPlugin extends EditorExportPlugin:
	var _plugin_name = PLUGIN_NAME


	func _supports_platform(platform: EditorExportPlatform) -> bool:
		if platform is EditorExportPlatformIOS:
			return true
		return false


	func _get_name() -> String:
		return _plugin_name
