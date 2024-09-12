/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 4049F90E
/// @DnDInput : 2
/// @DnDDisabled : 1
/// @DnDArgument : "funcName" "MyFunctionName"
/// @DnDArgument : "arg" "x"
/// @DnDArgument : "arg_1" "y"
/// @DnDAction : YoYo Games.Random.Get_Random_Number
/// @DnDVersion : 1
/// @DnDHash : 223E836E
/// @DnDDisabled : 1
/// @DnDParent : 4049F90E
/// @DnDArgument : "var" "wheelType"
/// @DnDArgument : "var_temp" "1"
/// @DnDArgument : "type" "1"
/// @DnDArgument : "max" "2"


/// @DnDAction : YoYo Games.Switch.Switch
/// @DnDVersion : 1
/// @DnDHash : 47D58FC2
/// @DnDDisabled : 1
/// @DnDParent : 4049F90E
/// @DnDArgument : "expr" "wheelType"
/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 3DDB866D
/// @DnDDisabled : 1
/// @DnDParent : 47D58FC2
/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 13BB6B1B
/// @DnDDisabled : 1
/// @DnDParent : 3DDB866D
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "objectid" "obj_CarTire"
/// @DnDSaveInfo : "objectid" "obj_CarTire"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 507D850A
/// @DnDDisabled : 1
/// @DnDParent : 47D58FC2
/// @DnDArgument : "const" "1"
/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 01512D8B
/// @DnDDisabled : 1
/// @DnDParent : 507D850A
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "objectid" "obj_BikeTire"
/// @DnDSaveInfo : "objectid" "obj_BikeTire"

/// @DnDAction : YoYo Games.Switch.Case
/// @DnDVersion : 1
/// @DnDHash : 70D3F652
/// @DnDDisabled : 1
/// @DnDParent : 47D58FC2
/// @DnDArgument : "const" "2"
/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2B608A1E
/// @DnDDisabled : 1
/// @DnDParent : 70D3F652
/// @DnDArgument : "xpos" "x"
/// @DnDArgument : "ypos" "y"
/// @DnDArgument : "objectid" "obj_TandHjul"
/// @DnDSaveInfo : "objectid" "obj_TandHjul"

/// @DnDAction : YoYo Games.Time.Time_Source_Create
/// @DnDVersion : 1
/// @DnDHash : 02AEBC53
/// @DnDDisabled : 1
/// @DnDArgument : "idx" "TimeSource1"
/// @DnDArgument : "parent" "time_source_global"
/// @DnDArgument : "period" "2"
/// @DnDArgument : "callback" "MyFunctionName"
/// @DnDArgument : "args" "[x,y]"
/// @DnDArgument : "reps" "-1"


/// @DnDAction : YoYo Games.Time.Time_Source_Start
/// @DnDVersion : 1
/// @DnDHash : 0CE50190
/// @DnDDisabled : 1
/// @DnDArgument : "idx" "TimeSource1"