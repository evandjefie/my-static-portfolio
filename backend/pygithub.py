from flask import Flask, render_template
from github import Github
from credentials import *



# using an access token
g = Github("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")
url = "https://github.com/evandjefie/"
myrepos = []
for repo in g.get_user().get_repos():
        myrepos.append(repo.name)
        # repo.edit(has_wiki=False)
myrepos_str = '\n'.join(myrepos)
print(myrepos_str)
