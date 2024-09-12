/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 33D1DAA3
/// @DnDArgument : "expr" "false"
/// @DnDArgument : "var" "IsGamePaused"
IsGamePaused = false;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 316C6467
/// @DnDInput : 2
/// @DnDArgument : "expr" "100"
/// @DnDArgument : "expr_1" "120"
/// @DnDArgument : "var" "Coins"
/// @DnDArgument : "var_1" "Lives"
Coins = 100;
Lives = 120;

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