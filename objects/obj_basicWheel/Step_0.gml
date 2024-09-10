/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 73CB2036
/// @DnDBreak : 1

/// @DnDArgument : "var" "Health"
/// @DnDArgument : "op" "3"
if(Health <= 0){	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5974F4F6
	/// @DnDParent : 73CB2036
	instance_destroy();}

/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
/// @DnDVersion : 1
/// @DnDHash : 504B6334
/// @DnDArgument : "value" "Mvnt_Speed"
/// @DnDArgument : "value_relative" "1"
x += Mvnt_Speed;