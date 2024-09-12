/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2829D3D1
var l2829D3D1_0 = false;l2829D3D1_0 = instance_exists(noone);if(l2829D3D1_0){	/// @DnDAction : YoYo Games.Common.Exit_Event
	/// @DnDVersion : 1
	/// @DnDHash : 4F47E888
	/// @DnDParent : 2829D3D1
	exit;}

/// @DnDAction : YoYo Games.Drawing.Draw_Self
/// @DnDVersion : 1
/// @DnDHash : 2319E1FD
draw_self();

/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 11719FCA
/// @DnDArgument : "font" "Ft_Hud_HP"
/// @DnDSaveInfo : "font" "Ft_Hud_HP"
draw_set_font(Ft_Hud_HP);

/// @DnDAction : YoYo Games.Drawing.Draw_Value
/// @DnDVersion : 1
/// @DnDHash : 046F974A
/// @DnDArgument : "x" "1205"
/// @DnDArgument : "y" "90"
/// @DnDArgument : "caption" """"
/// @DnDArgument : "var" "obj_GameManager.Lives"
draw_text(1205, 90, string("") + string(obj_GameManager.Lives));