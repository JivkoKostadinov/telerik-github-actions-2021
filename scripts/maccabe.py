"""
The script is used to check McCabe complexity in this specific project
"""
from __future__ import print_function
import os
import fnmatch
import subprocess


moderate_risk_rank_c = 11
errors = {}
for root, dirnames, filenames in os.walk('.'):
    for filename in fnmatch.filter(filenames, '*.py'):
        curr_file = os.path.join(root, filename)
        if ('.virtualenv' not in curr_file) and ('node_modules' not in curr_file) and ('.pyenv' not in curr_file):
            p = subprocess.Popen('python3 -m mccabe --min {0} {1}'.format(moderate_risk_rank_c, curr_file), shell=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
            issues = p.stdout.readlines()
            if len(issues) > 0:
                errors[curr_file] = issues
            retval = p.wait()
print(errors)
if len(errors) > 0:
    raise ValueError('Issues found while checking the codebase!')
