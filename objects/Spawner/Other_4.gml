/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4049F90E
/// @DnDInput : 2
/// @DnDArgument : "funcName" "MyFunctionName"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
function MyFunctionName(x, y) {	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 223E836E
	/// @DnDParent : 4049F90E
	/// @DnDArgument : "var" "wheelType"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	var wheelType = floor(random_range(0, 1 + 1));

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 47D58FC2
	/// @DnDParent : 4049F90E
	/// @DnDArgument : "expr" "wheelType"
	var l47D58FC2_0 = wheelType;switch(l47D58FC2_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 3DDB866D
		/// @DnDParent : 47D58FC2
		case 0:	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 13BB6B1B
			/// @DnDParent : 3DDB866D
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_CarTire"
			/// @DnDSaveInfo : "objectid" "obj_CarTire"
			instance_create_layer(x, y, "Instances", obj_CarTire);	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 507D850A
		/// @DnDParent : 47D58FC2
		/// @DnDArgument : "const" "1"
		case 1:	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 01512D8B
			/// @DnDParent : 507D850A
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_BikeTire"
			/// @DnDSaveInfo : "objectid" "obj_BikeTire"
			instance_create_layer(x, y, "Instances", obj_BikeTire);	break;}}

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