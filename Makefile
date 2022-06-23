install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt
mac-install: 
	brew install hdf5
	export HDF5_DIR="$(brew --prefix hdf5)"
	pip install --no-binary=h5py h5py
	$(MAKE) install
test:
	python -m pytest -vv test_hello.py

format:
	black *.py

lint:
	pylint --disable=R,C hello.py

train-ludwig:
	wget https://ludwig-ai.github.io/ludwig-docs/0.5/data/rotten_tomatoes.csv
	time ludwig train --config rotten_tomatoes.yaml --dataset rotten_tomatoes.csv

all: install lint test
