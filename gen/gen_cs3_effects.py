#!/usr/bin/env python3

# Run this script from the "gen" subfolder to regenerate the ksy for CS3 effects.
#
# It pulls data from the following files:
# - cs3_effects_doc.txt to generate documentation for the effect_id member.
# - cs3_effects.csv to generate members for the enum variants.
#   - The "effect id" column is expected to be an int (value of the effect id).
#   - The "name" column is expected to be a unique name suitable for use as an enum identifier.
#     If the "name" column is empty, the row is ignored.
#   - The "description" column is expected to be a one-line description of the effect.
#     It is used to generate a doc string for the variant.

import csv

with open("cs3_effects_doc.txt") as docfile:
    effects_doc = "\n".join((6 * " ") + line.strip("\n") for line in docfile)

with open("cs3_effects.csv") as csvfile:
    effects = [
        (row["effect id"], row["name"], row["description"])
        for row in csv.DictReader(csvfile)
        if row["name"]
    ]

schema = """# This file has been automatically generated, do not edit.
# See gen_cs3_effects.py for details.
meta:
  id: effect
  endian: le
seq:
  - id: effect_id
    type: u2
    enum: effect_type
    doc: |
{doc}
  - id: data
    type: u4
    repeat: expr
    repeat-expr: 3
enums:
  effect_type:
"""

variant_schema = """    {id}:
      id: {name}
      doc: {doc}
"""

with open("../schemas/components/cs3/effects.ksy", "w") as outfile:
    print(schema.format(doc=effects_doc), file=outfile, end="")

    for id, name, description in effects:
        print(
            variant_schema.format(id=id, name=name, doc=description),
            file=outfile,
            end="",
        )
