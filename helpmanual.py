#!/usr/bin/env python
"""
Open helpmanual.io man pages
Samuel Colvin 2016
MIT license
"""
import json
import platform
import subprocess
import shlex
import sys
try:
    from httplib import HTTPSConnection
except ImportError:
    from http.client import HTTPSConnection


def get_browser_opener():
    system = platform.system()
    if system == 'Linux':
        # what about linux without gnome?
        # on some version this should be `gnome-open`
        return 'gvfs-open'
    elif system == 'Windows':
        return 'start chrome'  # random guess, I don't much care
    else:
        return 'open'  # osx at least


def helpmanual():
    args = ' '.join(sys.argv[1:])
    if not args:
        return 'No arguments supplied, usage: "{} <search string>"'.format(sys.argv[0])
    c = HTTPSConnection('search.helpmanual.io')
    c.request('GET', '/' + args)
    r = c.getresponse()
    if not r.status == 200:
        return 'Connection error {}: {}'.format(r.status, r.reason)
    results = json.loads(r.read().decode('utf8'))

    if not results:
        return 'no results found'
    page_url = 'https://helpmanual.io{uri}'.format(**results[0])
    print('opening "{}"'.format(page_url))
    command = '{} {}'.format(get_browser_opener(), page_url)
    p = subprocess.Popen(shlex.split(command), stderr=subprocess.PIPE, stdout=subprocess.PIPE)
    p.wait()
    assert p.returncode == 0


if __name__ == '__main__':
    error_msg = helpmanual()
    if error_msg:
        print(error_msg)
        sys.exit(1)
