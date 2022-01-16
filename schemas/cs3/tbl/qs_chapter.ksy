meta:
  id: qs_chapter # QSChapter
  endian: le
  encoding: UTF-8
doc: |
  Notebook chapters.

  Present in t_navi.tbl, t_notebook.tbl, t_notecard.tbl, t_notechar.tbl,
  t_notehelp.tbl, t_notemons.tbl, t_notesynp.tbl, t_quest.tbl.
seq:
  - id: section_id
    type: s2
  - id: section_name
    type: strz
  - id: unknown
    type: u2
