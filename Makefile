venv::
	rm -rf venv
	python -m venv venv
	venv/bin/pip install -U pip
	venv/bin/pip install -r requirements.txt
	venv/bin/pip install -r ../python-data-flow/requirements.txt


docs::
	venv/bin/pdoc  --template-dir docs-templates ../python-data-flow/mysiar_data_flow/ -o docs/
	venv/bin/python changelog.py
