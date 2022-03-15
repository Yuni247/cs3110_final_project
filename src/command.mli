(** Interprets player commands *)

(** The type [command] represents a player's command. *)
type command =
  | Run
  | Attack of int

exception Invalid_input
(** Raised when an invalid input is keypressed. *)

val input : Battle.t -> Character.t -> int -> command
(** [input s] pattern matches the pressed key to a [command]. *)
