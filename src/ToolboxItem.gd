extends PanelContainer

func _get_drag_data(_position):
	var icon = TextureRect.new()
	var preview = Control.new()
	icon.texture = $HBoxContainer/TextureRect.texture
	icon.position = icon.texture.get_size() * -0.5
	preview.add_child(icon)
	set_drag_preview(preview)
	return { key = "bumperCircle", isToolboxItem = true }
