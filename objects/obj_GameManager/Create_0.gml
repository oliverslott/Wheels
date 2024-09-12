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

/// @DnDAction : YoYo Games.Common.Set_Global
/// @DnDVersion : 1
/// @DnDHash : 0B92610B
/// @DnDDisabled : 1
/// @DnDArgument : "value" "100"
/// @DnDArgument : "var" "Lives"


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
/// @DnDArgument : "sequenceid" "seq_coin_hud"
/// @DnDArgument : "layer" ""Instances""
/// @DnDSaveInfo : "sequenceid" "seq_coin_hud"
layer_sequence_create("Instances", 0, 0, seq_coin_hud);

/// @DnDAction : YoYo Games.Sequences.Sequence_Create
/// @DnDVersion : 1
/// @DnDHash : 08E83CE9
/// @DnDArgument : "var" ""
/// @DnDArgument : "sequenceid" "seq_HP_hud"
/// @DnDArgument : "layer" ""Instances""
/// @DnDSaveInfo : "sequenceid" "seq_HP_hud"
layer_sequence_create("Instances", 0, 0, seq_HP_hud);

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 5CE006EE
/// @DnDArgument : "funcName" "ReduceLives"
/// @DnDArgument : "arg" "ReducedLives"
function ReduceLives(ReducedLives) {	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 47933D7B
	/// @DnDParent : 5CE006EE
	/// @DnDArgument : "expr" "-ReducedLives"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "Lives"
	Lives += -ReducedLives;

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 00DDEE74
	/// @DnDParent : 5CE006EE
	/// @DnDArgument : "var" "Lives"
	/// @DnDArgument : "op" "3"
	if(Lives <= 0){	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
		/// @DnDVersion : 1
		/// @DnDHash : 2ECAD721
		/// @DnDParent : 00DDEE74
		/// @DnDArgument : "room" "EndScreen"
		/// @DnDSaveInfo : "room" "EndScreen"
		room_goto(EndScreen);}}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 381A3EAF
/// @DnDArgument : "funcName" "ReduceCoins"
/// @DnDArgument : "arg" "ReducedCoin"
function ReduceCoins(ReducedCoin) {	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 66B50111
	/// @DnDParent : 381A3EAF
	/// @DnDArgument : "value" "-ReducedCoins"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "Coins"
	global.Coins += -ReducedCoins;}

/// @DnDAction : YoYo Games.Common.Function
/// @DnDVersion : 1
/// @DnDHash : 18C4A7E4
/// @DnDArgument : "funcName" "AddCoins"
/// @DnDArgument : "arg" "AddedCoins"
function AddCoins(AddedCoins) {	/// @DnDAction : YoYo Games.Common.Set_Global
	/// @DnDVersion : 1
	/// @DnDHash : 7BB027B2
	/// @DnDParent : 18C4A7E4
	/// @DnDArgument : "value" "AddedCoins"
	/// @DnDArgument : "value_relative" "1"
	/// @DnDArgument : "var" "Coins"
	global.Coins += AddedCoins;}