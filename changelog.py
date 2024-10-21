import os

import markdown

with open(os.path.join(os.path.dirname(__file__), "../python-data-flow/CHANGELOG.md"), "r") as f:
    md = f.read()

html = markdown.markdown(md)
with open("./docs/changelog.html", "w") as f:
    f.write(html)
