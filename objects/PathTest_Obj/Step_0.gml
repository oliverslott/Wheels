/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 1CCDFD78
/// @DnDArgument : "expr" "speed"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "x"
x += speed;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 10E7F532
/// @DnDArgument : "obj" "PathFindingNode_Obj"
/// @DnDSaveInfo : "obj" "PathFindingNode_Obj"
var l10E7F532_0 = false;l10E7F532_0 = instance_exists(PathFindingNode_Obj);if(l10E7F532_0){	/// @DnDAction : YoYo Games.Instances.Instance_Get_Count
	/// @DnDVersion : 1
	/// @DnDHash : 14A5F20F
	/// @DnDParent : 10E7F532
	/// @DnDArgument : "var" "Count"
	/// @DnDArgument : "object" "PathFindingNode_Obj"
	/// @DnDSaveInfo : "object" "PathFindingNode_Obj"
	Count = instance_number(PathFindingNode_Obj);

	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 0600B036
	/// @DnDParent : 10E7F532
	/// @DnDArgument : "msg" "Count"
	show_debug_message(string(Count));

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2321B445
	/// @DnDParent : 10E7F532
	/// @DnDArgument : "expr" "null"
	/// @DnDArgument : "var" "NearestObject"
	NearestObject = null;

	/// @DnDAction : YoYo Games.Loops.Repeat
	/// @DnDVersion : 1
	/// @DnDHash : 562E8908
	/// @DnDParent : 10E7F532
	/// @DnDArgument : "times" "Count"
	repeat(Count){	/// @DnDAction : YoYo Games.Common.If_Variable
		/// @DnDVersion : 1
		/// @DnDHash : 2D1C5410
		/// @DnDParent : 562E8908
		/// @DnDArgument : "var" "NearestObject"
		/// @DnDArgument : "value" "null"
		if(NearestObject == null){	/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 5855BB97
			/// @DnDParent : 2D1C5410
			/// @DnDArgument : "var" "NearestObject"
			NearestObject = 0;}}

	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 04E245B3
	/// @DnDParent : 10E7F532
	variable = x;}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2A596B1E
else{	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 7710A65B
	/// @DnDParent : 2A596B1E
	/// @DnDArgument : "msg" ""Not found :(""
	show_debug_message(string("Not found :("));}