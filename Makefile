up:
	docker compose up -d --remove-orphans
down:
	docker compose down
restart:
	docker compose restart 
backend:
	docker exec -it backend bash
ipfs: 
	docker compose up -d ipfs 
freeze_env:
	pip freeze > requirements-debug.txt
test_ipfs:
	python test/test_ipfs_async.py

local_jupyter:
	source env/bin/activate; jupyter lab