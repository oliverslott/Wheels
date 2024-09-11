/// @DnDAction : YoYo Games.Data Structures.Create_List
/// @DnDVersion : 1
/// @DnDHash : 7F26325E
/// @DnDArgument : "var" "Touched_Points"
Touched_Points = ds_list_create();

/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
/// @DnDVersion : 1
/// @DnDHash : 7ABD6AAB
/// @DnDArgument : "var" "Obj_Count"
/// @DnDArgument : "object" "PathTestNode_Obj"
/// @DnDSaveInfo : "object" "PathTestNode_Obj"
Obj_Count = instance_number(PathTestNode_Obj);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2A5951E3
/// @DnDArgument : "msg" "Obj_Count"
show_debug_message(string(Obj_Count));

/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 0C77D265
/// @DnDArgument : "cond" "i < Obj_Count"
for(i = 0; i < Obj_Count; i += 1) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2B9AC973
	/// @DnDParent : 0C77D265
	/// @DnDArgument : "expr" "instance_find(PathTestNode_Obj, i)"
	variable = instance_find(PathTestNode_Obj, i);

	/// @DnDAction : YoYo Games.Data Structures.List_Add
	/// @DnDVersion : 1
	/// @DnDHash : 6E39C34A
	/// @DnDParent : 0C77D265
	/// @DnDArgument : "var" "Touched_Points"
	/// @DnDArgument : "value" "variable"
	ds_list_add(Touched_Points, variable);

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 7173F3BF
	/// @DnDParent : 0C77D265
	/// @DnDArgument : "msg" "real(variable)"
	show_debug_message(string(real(variable)));}