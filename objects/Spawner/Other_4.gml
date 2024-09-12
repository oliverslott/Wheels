/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4049F90E
/// @DnDInput : 2
/// @DnDArgument : "funcName" "MyFunctionName"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
function MyFunctionName(x, y) {	/// @DnDAction : YoYo Games.Instances.Create_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 13BB6B1B
	/// @DnDParent : 4049F90E
	/// @DnDArgument : "xpos" "x"
	/// @DnDArgument : "ypos" "y"
	/// @DnDArgument : "objectid" "obj_CarTire"
	/// @DnDSaveInfo : "objectid" "obj_CarTire"
	instance_create_layer(x, y, "Instances", obj_CarTire);}

/// @DnDAction : YoYo Games.Time.Time_Source_Create
/// @DnDVersion : 1
/// @DnDHash : 02AEBC53
/// @DnDArgument : "idx" "TimeSource1"
/// @DnDArgument : "parent" "time_source_global"
/// @DnDArgument : "period" "2"
/// @DnDArgument : "callback" "MyFunctionName"
/// @DnDArgument : "args" "[x,y]"
/// @DnDArgument : "reps" "-1"
TimeSource1 = time_source_create(time_source_global, 2, time_source_units_seconds, MyFunctionName, [x,y], -1, time_source_expire_after);

/// @DnDAction : YoYo Games.Time.Time_Source_Start
/// @DnDVersion : 1
/// @DnDHash : 0CE50190
/// @DnDArgument : "idx" "TimeSource1"
time_source_start(TimeSource1);