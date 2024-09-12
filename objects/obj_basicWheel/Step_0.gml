/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 084F5D49
/// @DnDApplyTo : {obj_GameManager}
with(obj_GameManager) {
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5B31F91E
	/// @DnDParent : 084F5D49
	/// @DnDArgument : "var" "tempIsGamePaused"
	/// @DnDArgument : "value" "IsGamePaused"
	var tempIsGamePaused = IsGamePaused;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 2E34F521
/// @DnDDisabled : 1
/// @DnDArgument : "expr" "tempIsGamePaused"
/// @DnDArgument : "not" "1"
/// @DnDAction : YoYo Games.Common.If_Variable
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
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 30B33219
		/// @DnDApplyTo : {obj_basicWheel}
		/// @DnDParent : 29D169C4
		with(obj_basicWheel) {
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 23C77A18
			/// @DnDParent : 30B33219
			/// @DnDArgument : "var" "CoinsOnDeathTemp"
			/// @DnDArgument : "value" "CoinsOnDeath"
			var CoinsOnDeathTemp = CoinsOnDeath;
		}
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 394B212A
		/// @DnDParent : 29D169C4
		/// @DnDArgument : "function" "AddCoins"
		/// @DnDArgument : "arg" "CoinsOnDeathTemp"
		AddCoins(CoinsOnDeathTemp);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 5974F4F6
	/// @DnDParent : 73CB2036
	instance_destroy();}

/// @DnDAction : YoYo Games.Instances.Inherit_Event
/// @DnDVersion : 1
/// @DnDHash : 12F7235E
/// @DnDParent : 2E34F521
event_inherited();

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
		/// @DnDAction : YoYo Games.Common.Apply_To
		/// @DnDVersion : 1
		/// @DnDHash : 176DE562
		/// @DnDApplyTo : {obj_basicWheel}
		/// @DnDParent : 07D193DA
		with(obj_basicWheel) {
			/// @DnDAction : YoYo Games.Common.Temp_Variable
			/// @DnDVersion : 1
			/// @DnDHash : 3DBFCF51
			/// @DnDParent : 176DE562
			/// @DnDArgument : "var" "LivesOnPassTemp"
			/// @DnDArgument : "value" "LivesOnPass"
			var LivesOnPassTemp = LivesOnPass;
		}
	
		/// @DnDAction : YoYo Games.Common.Function_Call
		/// @DnDVersion : 1
		/// @DnDHash : 2B775AC4
		/// @DnDParent : 07D193DA
		/// @DnDArgument : "function" "ReduceLives"
		/// @DnDArgument : "arg" "LivesOnPassTemp"
		ReduceLives(LivesOnPassTemp);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 611BAA50
	/// @DnDParent : 08CCB422
	instance_destroy();}