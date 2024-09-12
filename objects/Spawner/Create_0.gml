/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 61C35D6F
/// @DnDInput : 2
/// @DnDArgument : "funcName" "MyFunctionName"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
function MyFunctionName(x, y) {	/// @DnDAction : YoYo Games.Random.Get_Random_Number
	/// @DnDVersion : 1
	/// @DnDHash : 52426BB6
	/// @DnDParent : 61C35D6F
	/// @DnDArgument : "var" "wheelType"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "type" "1"
	/// @DnDArgument : "max" "2"
	var wheelType = floor(random_range(0, 2 + 1));

	/// @DnDAction : YoYo Games.Switch.Switch
	/// @DnDVersion : 1
	/// @DnDHash : 17972A08
	/// @DnDParent : 61C35D6F
	/// @DnDArgument : "expr" "wheelType"
	var l17972A08_0 = wheelType;switch(l17972A08_0){	/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 67F6FDDF
		/// @DnDParent : 17972A08
		case 0:	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 114E6BB9
			/// @DnDParent : 67F6FDDF
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_CarTire"
			/// @DnDSaveInfo : "objectid" "obj_CarTire"
			instance_create_layer(x, y, "Instances", obj_CarTire);	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 56AA0D73
		/// @DnDParent : 17972A08
		/// @DnDArgument : "const" "1"
		case 1:	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 6034C5BA
			/// @DnDParent : 56AA0D73
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_BikeTire"
			/// @DnDSaveInfo : "objectid" "obj_BikeTire"
			instance_create_layer(x, y, "Instances", obj_BikeTire);	break;
	
		/// @DnDAction : YoYo Games.Switch.Case
		/// @DnDVersion : 1
		/// @DnDHash : 4391C35F
		/// @DnDParent : 17972A08
		/// @DnDArgument : "const" "2"
		case 2:	/// @DnDAction : YoYo Games.Instances.Create_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 1B850D8D
			/// @DnDParent : 4391C35F
			/// @DnDArgument : "xpos" "x"
			/// @DnDArgument : "ypos" "y"
			/// @DnDArgument : "objectid" "obj_TandHjul"
			/// @DnDSaveInfo : "objectid" "obj_TandHjul"
			instance_create_layer(x, y, "Instances", obj_TandHjul);	break;}}

/// @DnDAction : YoYo Games.Time.Time_Source_Create
/// @DnDVersion : 1
/// @DnDHash : 301B3095
/// @DnDArgument : "idx" "TimeSource1"
/// @DnDArgument : "parent" "time_source_global"
/// @DnDArgument : "period" "2"
/// @DnDArgument : "callback" "MyFunctionName"
/// @DnDArgument : "args" "[x,y]"
/// @DnDArgument : "reps" "-1"
TimeSource1 = time_source_create(time_source_global, 2, time_source_units_seconds, MyFunctionName, [x,y], -1, time_source_expire_after);

/// @DnDAction : YoYo Games.Time.Time_Source_Start
/// @DnDVersion : 1
/// @DnDHash : 0E233DE7
/// @DnDArgument : "idx" "TimeSource1"
time_source_start(TimeSource1);