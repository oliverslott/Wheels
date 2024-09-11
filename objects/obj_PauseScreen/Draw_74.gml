/// @DnDAction : YoYo Games.Common.Apply_To
/// @DnDVersion : 1
/// @DnDHash : 5928BE58
/// @DnDApplyTo : {obj_GameManager}
with(obj_GameManager) {
	/// @DnDAction : YoYo Games.Common.Temp_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 3DF974CC
	/// @DnDParent : 5928BE58
	/// @DnDArgument : "var" "tempIsGamePaused"
	/// @DnDArgument : "value" "IsGamePaused"
	var tempIsGamePaused = IsGamePaused;
}

/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 21361DE2
/// @DnDArgument : "expr" "tempIsGamePaused"
if(tempIsGamePaused){	/// @DnDAction : YoYo Games.Drawing.Draw_Self
	/// @DnDVersion : 1
	/// @DnDHash : 00A600B4
	/// @DnDParent : 21361DE2
	draw_self();}