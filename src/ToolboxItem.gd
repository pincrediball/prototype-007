extends PanelContainer

func _get_drag_data(_position):
	var preview = TextureRect.new()
	preview.texture = $HBoxContainer/TextureRect.texture
	set_drag_preview(preview)
	return { id = "bumperCircle" }
