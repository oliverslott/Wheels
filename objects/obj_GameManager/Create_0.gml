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
