#
# © 2024-present https://github.com/cengiz-pz
#

extends Node

@onready var inapp_review: InappReview = $InappReview as InappReview
@onready var _label: RichTextLabel = $CanvasLayer/CenterContainer/VBoxContainer/RichTextLabel as RichTextLabel


func _on_button_pressed() -> void:
	inapp_review.generate_review_info()


func _on_inapp_review_review_info_generated() -> void:
	_print_to_screen("In-app review info generation success!")
	_print_to_screen("Launching review flow...")
	inapp_review.launch_review_flow()


func _on_inapp_review_review_info_generation_failed() -> void:
	_print_to_screen("In-app review info generation failed!", true)


func _on_inapp_review_review_flow_launched() -> void:
	_print_to_screen("In-app review flow launched!")


func _on_inapp_review_review_flow_launch_failed() -> void:
	_print_to_screen("In-app review flow launch failed!", true)


func _print_to_screen(a_message: String, a_is_error: bool = false) -> void:
	_label.add_text("%s\n\n" % a_message)
	if a_is_error:
		printerr(a_message)
	else:
		print(a_message)
