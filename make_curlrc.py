#!/usr/bin/env python3
"""
Create a curl rc file with ansi colours, requires click to be installed
"""
from pathlib import Path
import click

chunks = [
    ('status=', 'blue'),
    ('%{http_code} ', 'green'),
    ('%{redirect_url} ', 'green'),
    ('size=', 'blue'),
    ('%{size_download} ', 'green'),
    ('time=', 'blue'),
    ('%{time_total} ', 'green'),
    ('content-type=', 'blue'),
    ('\\"%{content_type}\\"', 'green'),
]

content = '-w "\\n'
for chunk, colour in chunks:
    content += click.style(chunk, fg=colour)
content += '\\n"\n'

path = (Path.home() / '.curlrc').resolve()
print('writing:\n{}to: {}'.format(content, path))
path.write_text(content)
