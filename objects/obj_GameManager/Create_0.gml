/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33D1DAA3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "IsGamePaused"
IsGamePaused = false;

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 60DD51A0
/// @DnDArgument : "value" "100"
/// @DnDArgument : "var" "Coins"
global.Coins = 100;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 316C6467
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "var" "Lives"
Lives = 100;

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 690ACBAF
/// @DnDArgument : "var" ""
/// @DnDArgument : "sequenceid" "seq_game_hud"
/// @DnDArgument : "layer" ""Instances""
/// @DnDSaveInfo : "sequenceid" "seq_game_hud"
layer_sequence_create("Instances", 0, 0, seq_game_hud);

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 73283D7E
/// @DnDArgument : "funcName" "ReduceLives"
/// @DnDArgument : "arg" "ReducedLives"
function ReduceLives(ReducedLives) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2E96FC84
	/// @DnDParent : 73283D7E
	/// @DnDArgument : "expr" "-ReducedLives"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Lives"
	Lives += -ReducedLives;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4664534B
	/// @DnDParent : 73283D7E
	/// @DnDArgument : "var" "Lives"
	/// @DnDArgument : "op" "3"
	if(Lives <= 0){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 31460300
		/// @DnDParent : 4664534B
		/// @DnDArgument : "room" "EndScreen"
		/// @DnDSaveInfo : "room" "EndScreen"
		room_goto(EndScreen);}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 7EAD9C10
/// @DnDArgument : "funcName" "ReduceCoins"
/// @DnDArgument : "arg" "ReducedCoins"
function ReduceCoins(ReducedCoins) {	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 725FF738
	/// @DnDParent : 7EAD9C10
	/// @DnDArgument : "value" "-ReducedCoins"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "Coins"
	global.Coins += -ReducedCoins;}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 26A0BB27
/// @DnDArgument : "funcName" "AddCoins"
/// @DnDArgument : "arg" "AddedCoins"
function AddCoins(AddedCoins) {	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 3AF125B5
	/// @DnDParent : 26A0BB27
	/// @DnDArgument : "value" "AddedCoins"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "Coins"
	global.Coins += AddedCoins;}