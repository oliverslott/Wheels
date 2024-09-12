/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 39E13199
/// @DnDArgument : "var" "NearestObject"
NearestObject = 0;

/// @DnDAction : YoYo Games.Data Structures.List_Count
/// @DnDVersion : 1
/// @DnDHash : 27E2C561
/// @DnDArgument : "assignee" "Count"
/// @DnDArgument : "var" "Touched_Points"
Count = ds_list_size(Touched_Points);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 2A5E7B0E
/// @DnDDisabled : 1
/// @DnDArgument : "msg" "Count"


/// @DnDAction : YoYo Games.Loops.For_Loop
/// @DnDVersion : 1
/// @DnDHash : 0F774931
/// @DnDArgument : "cond" "i < Count"
for(i = 0; i < Count; i += 1) {	/// @DnDAction : YoYo Games.Data Structures.List_Get_At
	/// @DnDVersion : 1
	/// @DnDHash : 39B77FE4
	/// @DnDParent : 0F774931
	/// @DnDArgument : "assignee" "CurrentObj"
	/// @DnDArgument : "var" "Touched_Points"
	/// @DnDArgument : "index" "i"
	CurrentObj = ds_list_find_value(Touched_Points, i);

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 0A567776
	/// @DnDParent : 0F774931
	/// @DnDArgument : "msg" "CurrentObj"
	show_debug_message(string(CurrentObj));

	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 10C8F3AA
	/// @DnDParent : 0F774931
	/// @DnDArgument : "var" "distance"
	/// @DnDArgument : "value" "distance_to_object(CurrentObj)"
	var distance = distance_to_object(CurrentObj);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 49154A07
	/// @DnDParent : 0F774931
	/// @DnDArgument : "var" "NearestObject"
	if(NearestObject == 0){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 28DFDF41
		/// @DnDParent : 49154A07
		/// @DnDArgument : "expr" "CurrentObj"
		/// @DnDArgument : "var" "NearestObject"
		NearestObject = CurrentObj;}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0C2236ED
	/// @DnDParent : 0F774931
	/// @DnDArgument : "var" "distance"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "distance_to_object(NearestObject)"
	if(distance <= distance_to_object(NearestObject)){	/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 45A97726
		/// @DnDParent : 0C2236ED
		/// @DnDArgument : "expr" "CurrentObj"
		/// @DnDArgument : "var" "NearestObject"
		NearestObject = CurrentObj;}

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 6E1D1AC7
	/// @DnDDisabled : 1
	/// @DnDParent : 0F774931
	/// @DnDArgument : "msg" "NearestObject.id"}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2B230980
/// @DnDArgument : "var" "NearestObject"
/// @DnDArgument : "not" "1"
if(!(NearestObject == 0)){	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 466C21BB
	/// @DnDDisabled : 1
	/// @DnDParent : 2B230980
	/// @DnDArgument : "msg" "NearestObject"


	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1D703E72
	/// @DnDInput : 2
	/// @DnDParent : 2B230980
	/// @DnDArgument : "var" "x_dir"
	/// @DnDArgument : "value" "(NearestObject.x-x)/point_distance(NearestObject.x,NearestObject.y, x,y)"
	/// @DnDArgument : "var_1" "y_dir"
	/// @DnDArgument : "value_1" "(NearestObject.y-y)/point_distance(NearestObject.x,NearestObject.y, x,y)"
	var x_dir = (NearestObject.x-x)/point_distance(NearestObject.x,NearestObject.y, x,y);
	var y_dir = (NearestObject.y-y)/point_distance(NearestObject.x,NearestObject.y, x,y);

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 1C762223
	/// @DnDInput : 2
	/// @DnDParent : 2B230980
	/// @DnDArgument : "value" "x_dir*Mvnt_Speed"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "value_1" "y_dir*Mvnt_Speed"
	/// @DnDArgument : "value_relative_1" "1"
	/// @DnDArgument : "instvar_1" "1"
	x += x_dir*Mvnt_Speed;
	y += y_dir*Mvnt_Speed;}