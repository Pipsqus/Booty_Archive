# Godot

+ [Syntax](#syntax)
+ [Useful Functions](#useful-functions)

## Syntax
	func name(parameter1, parameter2...)  
		return
	
	range(n) = [0, 1, ...n]

	if x < 0:  
		hide()
		show()
	
## Useful Functions
Ensure consistency between computers by syncing with the delta

	_process(delta):  
		MyCharacter.position += Vector2(3, 3)
	
	rotate(3.0 * delta)











