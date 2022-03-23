meta:
  id: status_p
  endian: le
  encoding: UTF-8
  imports:
    - /components/cs3/character
    - status
doc: |
  Player status.
  Includes stat bases and growths; elemental, status, and unbalance
  efficacies; sepith and item drops; and more.

  Extremely similar to the monster status table (status).

  Present in t_status.tbl
seq:
  - id: character_id
    type: character
  - id: status
    type: status
