from flask import Flask, render_template, redirect, url_for, request
from github import Github
from credentials import *

#init
# app = Flask(__name__)
app = Flask(__name__,template_folder="../frontend/",static_folder="../frontend/css")

def gith():
    # using an access token
    g = Github("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")
    url = "https://github.com/evandjefie/"
    myrepos = []
    for repo in g.get_user().get_repos():
        myrepos.append(repo.name)
        # repo.edit(has_wiki=False)
    # myrepos_str = '\n'.join(myrepos)       
    return myrepos

myrepos_str = gith()

@app.route("/", methods=['GET','POST'])
def index():
	# return render_template("pygithub.py")
    return render_template('index.html')


if __name__ == "__main__":
    app.run(debug=True)