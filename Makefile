venv::
	rm -rf venv
	python -m venv venv
	venv/bin/pip install -U pip
	venv/bin/pip install -r requirements.txt
	$(MAKE) pip

pip::
	venv/bin/pip install -r ../python-data-flow/requirements.txt
	venv/bin/pip install -r ../st-table/requirements.txt

docs::
	venv/bin/pdoc  --template-dir docs-templates ../python-data-flow/mysiar_data_flow/ -o mysiar-data-flow/
	venv/bin/pdoc  --template-dir docs-templates ../st-table/st_df_table/ !st_df_table.example -o st-df-table/

