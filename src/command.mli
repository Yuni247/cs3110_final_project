(** Interprets player commands *)

(** The type [command] represents a player's command when in the
    overworld. *)
type map_command =
  | Up
  | Down
  | Left
  | Right
  | Exit
  | Invalid_input

val map_input : char -> map_command
(** [input s] pattern matches the pressed key to a [map_command]. *)

(** The type [battle_command] represents a player's command when in
    battle. *)
type battle_command =
  | Attack of int
  | Run
  | Exit
  | Invalid_input

val battle_input : Battle.t -> Character.t -> char -> battle_command
(** [battle_input s] pattern matches the pressed key to a [command]. *)

type hatchery_command =
  | Roll
  | Skip
  | Invalid

val hatchery_input : char -> hatchery_command
