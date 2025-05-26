#!/bin/python
import argparse
import os
from datetime import datetime, timedelta

note_name = datetime.today().strftime('%Y-%m-%d')
yesterday_note_name = (datetime.now() - timedelta(1)).strftime('%Y-%m-%d')

vault_path = "/home/lochie/vaults/brain/notes/dailies/"

source_path = vault_path + yesterday_note_name + ".md"
target_path = vault_path + note_name + ".md"
source_day_file = open(source_path)
target_day_file = open(target_path)
source_day = source_day_file.read()
target_day = target_day_file.read()


lookfor = "## Checklist"
index = target_day.find(lookfor)
index += len(lookfor)
has_added_lines = False
output_source = ''

for line in source_day.splitlines():
    if line.startswith("- [ ]"):
        has_added_lines = True
        target_day = target_day[:index] + "\n" + line + target_day[index:]
    else:
        # Avoid double blank lines
        if not (line == "" and output_source[-2] == "\n"):
            output_source = output_source + line + "\n"

# Add a line between checklist title and new entries
if has_added_lines:
    target_day = target_day[:index] + "\n" + target_day[index:]

with open(target_path, "w") as text_file:
    text_file.write(target_day)

old_file = open(source_path, 'w')

old_file.write(output_source)
