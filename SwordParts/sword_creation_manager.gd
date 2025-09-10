extends Node

@export var part: PackedScene 

func _ready() -> void:
	var CrossguardParts: Array = gatherParts("res://SwordParts/Crossguards/CrossguardStats/")
	var GripParts: Array = gatherParts("res://SwordParts/Grips/GripStats/")
	var PommelParts: Array = gatherParts("res://SwordParts/Pommels/PommelStats/")
	var BladeParts: Array = gatherParts("res://SwordParts/Blades/BladeStats/")
	makePart(BladeParts)

func gatherParts(PartDir):
	var path = PartDir
	var dir = DirAccess.open(path)
	var files = dir.get_files()
	var SwordPartData: Array = []
	if dir:
		for file in files:
			if file.get_extension() == "tres":
				var Directory = Stdir + file
				SwordPartData.append(Directory)
				#print(file, PartDir)
	else:
		printerr("Could Not Retrieve Files" )
	return SwordPartData
#this gathers each part resource from their respective Stat folders

func makePart(list):
	for item in list:
		print(item)
		var instancedPart = part.instantiate()
		#instancedPart.PartData = load(item)
		add_child(instancedPart)

func createSword():
	pass
