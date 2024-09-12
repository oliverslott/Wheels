/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 2B1FF6B3
/// @DnDArgument : "expr" "-1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "Count_Down"
Count_Down += -1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3ADF33F0
/// @DnDArgument : "steps" "120"
alarm_set(0, 120);

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F6CD738
/// @DnDArgument : "var" "Count_Down"
/// @DnDArgument : "op" "1"
/// @DnDArgument : "value" "1"
if(Count_Down < 1){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 7CC9B9F9
	/// @DnDParent : 2F6CD738
	/// @DnDArgument : "room" "Win_Screen"
	/// @DnDSaveInfo : "room" "Win_Screen"
	room_goto(Win_Screen);

	/// @DnDAction : YoYo Games.Drawing.Set_Font
	/// @DnDVersion : 1
	/// @DnDHash : 44D452D3
	/// @DnDParent : 2F6CD738
	/// @DnDArgument : "font" "Ft_Win"
	/// @DnDSaveInfo : "font" "Ft_Win"
	draw_set_font(Ft_Win);

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 04939DF9
	/// @DnDParent : 2F6CD738
	/// @DnDArgument : "x" "200"
	/// @DnDArgument : "y" "100"
	/// @DnDArgument : "caption" ""You Win""
	draw_text(200, 100, string("You Win") + "");}