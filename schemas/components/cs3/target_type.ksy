meta:
  id: target_type
  endian: le
seq:
  - id: type_id
    type: u1
    enum: target_types
    doc: |
      Target type, used by items and magic (arts, crafts, etc.).

      Some target types allow movement.
      For these types, the actor will move towards the target until it is in range.
      If the target is already in range, the actor does not move.
      The distance between actor and target must not be larger than MOV + range.
enums:
  target_types:
    0:
      id: target_none
      doc: Used by flee, item, ailment penalty, etc.
    10:
      id: target_single_no_movement
      doc: Single target.
    11:
      id: target_single_move
      doc: Single target, actor moves if necessary.
    12:
      id: target_area_no_movement
      doc: Target combatant with AoE.
    13:
      id: target_set_area_no_movement
      doc: Target set area.
    14:
      id: target_area_move
      doc: Target combatant with AoE, actor moves if necessary.
    15:
      id: target_set_area_move
      doc: Target set area, actor moves if necessary.
    16:
      id: target_set_area_move_to_center
      doc: Target set area, actor moves to center.
    17:
      id: target_area_self
      doc: Target self with AoE.
    18:
      id: target_line_move_to_end
      doc: Target line with AoE, actor moves to the end.
    19:
      id: target_line_unknown
      doc: Target line with AoE. Used only by Jessica's Cold Nail.
    20:
      id: target_line
      doc: Target line with AoE.
    31:
      id: target_all_1
      doc: Target all.
    32:
      id: target_all_2
      doc: Target all. Only used by Brave Seed and Brave Soul.
    50:
      id: target_single_mech
      doc: Single target in Divine Knight/Panzer Soldat battles.
    51:
      id: target_all_mech
      doc: Target all in Divine Knight/Panzer Soldat battles.
