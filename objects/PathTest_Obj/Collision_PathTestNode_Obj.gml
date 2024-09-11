/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 7D77B869
/// @DnDDisabled : 1
/// @DnDArgument : "msg" "instance_id"


/// @DnDAction : YoYo Games.Data Structures.List_Get_At
/// @DnDVersion : 1
/// @DnDHash : 6C1D2A93
/// @DnDArgument : "assignee" "variable2"
/// @DnDArgument : "var" "Touched_Points"
variable2 = ds_list_find_value(Touched_Points, 0);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2CC405C0
/// @DnDDisabled : 1
/// @DnDArgument : "msg" "variable2"


/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 12A91CC1
/// @DnDDisabled : 1
/// @DnDArgument : "msg" "other.id"


/// @DnDAction : YoYo Games.Data Structures.List_IndexOf
/// @DnDVersion : 1
/// @DnDHash : 5BB70034
/// @DnDArgument : "assignee" "indexx"
/// @DnDArgument : "var" "Touched_Points"
/// @DnDArgument : "value" "other.id"
indexx = ds_list_find_index(Touched_Points, other.id);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 0E12E35F
/// @DnDArgument : "var" "indexx"
/// @DnDArgument : "not" "1"
/// @DnDArgument : "value" "-1"
if(!(indexx == -1)){	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 243CBF78
	/// @DnDParent : 0E12E35F
	/// @DnDArgument : "assignee" "variabledd"
	/// @DnDArgument : "var" "Touched_Points"
	/// @DnDArgument : "index" "indexx"
	variabledd = ds_list_find_value(Touched_Points, indexx);

	/// @DnDAction : YoYo Games.Data Structures.List_Remove
	/// @DnDVersion : 1
	/// @DnDHash : 13E29108
	/// @DnDParent : 0E12E35F
	/// @DnDArgument : "var" "Touched_Points"
	/// @DnDArgument : "index" "indexx"
	if(ds_list_size(Touched_Points) > indexx)	ds_list_delete(Touched_Points, indexx);

	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 05269165
	/// @DnDDisabled : 1
	/// @DnDParent : 0E12E35F
	/// @DnDArgument : "assignee" "variableg"
	/// @DnDArgument : "var" "Touched_Points"


	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 692B9955
	/// @DnDDisabled : 1
	/// @DnDParent : 0E12E35F
	/// @DnDArgument : "msg" "variableg"}