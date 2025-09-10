extends Node3D
@onready var PartData: PartStats
@onready var meshinstance = MeshInstance3D.new()

func _ready() -> void:
	if PartData == null:
		print("kys")
	#if meshinstance.mesh == null:
		#meshinstance.mesh = PartData.PartMesh
		#meshinstance.create_trimesh_collision()
		#5add_child(meshinstance)
