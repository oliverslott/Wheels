/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 084F5D49
/// @DnDApplyTo : {obj_GameManager}
with(obj_GameManager) {
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 6E33F8B8
	/// @DnDParent : 084F5D49
	/// @DnDArgument : "var" "tempIsGamePaused"
	/// @DnDArgument : "value" "IsGamePaused"
	var tempIsGamePaused = IsGamePaused;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2E34F521
/// @DnDArgument : "expr" "tempIsGamePaused"
/// @DnDArgument : "not" "1"
if(!(tempIsGamePaused)){	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 73CB2036
	/// @DnDParent : 2E34F521
	/// @DnDArgument : "var" "Health"
	/// @DnDArgument : "op" "3"
	if(Health <= 0){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 29D169C4
		/// @DnDApplyTo : {obj_GameManager}
		/// @DnDParent : 73CB2036
		with(obj_GameManager) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 4D3489A2
			/// @DnDParent : 29D169C4
			/// @DnDArgument : "expr" "CoinsOnDeath"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "Coins"
			Coins += CoinsOnDeath;
		}
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5974F4F6
		/// @DnDParent : 73CB2036
		instance_destroy();}

	/// @DnDAction : YoYo Games.Instances.Set_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 504B6334
	/// @DnDParent : 2E34F521
	/// @DnDArgument : "value" "Mvnt_Speed"
	/// @DnDArgument : "value_relative" "1"
	x += Mvnt_Speed;

	/// @DnDAction : YoYo Games.Instances.Get_Instance_Var
	/// @DnDVersion : 1
	/// @DnDHash : 52824874
	/// @DnDParent : 2E34F521
	/// @DnDArgument : "target" "x_coord"
	/// @DnDArgument : "target_temp" "1"
	var x_coord = x;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 08CCB422
	/// @DnDParent : 2E34F521
	/// @DnDArgument : "var" "x_coord"
	/// @DnDArgument : "op" "4"
	/// @DnDArgument : "value" "1400"
	if(x_coord >= 1400){	/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 07D193DA
		/// @DnDApplyTo : {obj_GameManager}
		/// @DnDParent : 08CCB422
		with(obj_GameManager) {
			/// @DnDAction : YoYo Games.Common.Variable
			/// @DnDVersion : 1
			/// @DnDHash : 2857B8CD
			/// @DnDParent : 07D193DA
			/// @DnDArgument : "expr" "-LivesOnPass"
			/// @DnDArgument : "expr_relative" "1"
			/// @DnDArgument : "var" "Lives"
			Lives += -LivesOnPass;
		}
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 67974B0A
		/// @DnDParent : 08CCB422
		instance_destroy();}}