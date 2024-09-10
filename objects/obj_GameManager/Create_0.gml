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
/// @DnDArgument : "sequenceid" "seq_game_hud"
/// @DnDArgument : "layer" ""Instances""
/// @DnDSaveInfo : "sequenceid" "seq_game_hud"
layer_sequence_create("Instances", 0, 0, seq_game_hud);