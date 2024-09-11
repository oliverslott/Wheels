/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2549C892
var l2549C892_0 = false;l2549C892_0 = instance_exists(noone);if(l2549C892_0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 68541AB6
	/// @DnDParent : 2549C892
	exit;}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 51855399
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 6188DD38
/// @DnDArgument : "font" "Ft_Hud"
/// @DnDSaveInfo : "font" "Ft_Hud"
draw_set_font(Ft_Hud);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 195254B4
/// @DnDArgument : "x" "-100"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "obj_GameManager.Coins"
draw_text(x + -100, y + 0, string("") + string(obj_GameManager.Coins));