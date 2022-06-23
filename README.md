# ludwig-getting-started
Declarative ML examples with Ludwig

## Compile Python and Create VirtualEnv with It

`sudo apt-get install build-essential gdb lcov libbz2-dev libffi-dev libgdbm-dev liblzma-dev libncurses5-dev libreadline6-dev libsqlite3-dev libssl-dev lzma lzma-dev tk-dev uuid-dev zlib1g-dev`

`wget https://www.python.org/ftp/python/3.10.5/Python-3.10.5.tgz`

`tar zxvf Python-3.10.5.tgz`

` ./configure --enable-optimizations`

`make -j 32`

`make altinstall `

### Create virtualenv and source

`/usr/local/bin/python -m venv ~/.venv`

`vim ~/.bashrc` and add line:  `source ~/.venv/bin/activate`

## Example of Getting Started

1. `wget https://ludwig-ai.github.io/ludwig-docs/0.5/data/rotten_tomatoes.csv`
2.  Create yaml file (to train) `rotten_tomatoes.csv`
3.  Train: `ludwig train --config rotten_tomatoes.yaml --dataset rotten_tomatoes.csv`

## Training on m1ultra studio

`make install-mac`
`make train-ludwig` finishes in: `    39.21 real       123.35 user        60.05 sys`

## References

* [Watch Walkthrough on YouTube with M1Ultra Mac](https://youtu.be/zcw9tKcmwPk)
* [O'Reilly:  Training Ludwig Declarative Deep Learning models using Mac Studio M1Ultra](https://learning.oreilly.com/videos/training-ludwig-declarative/06232022VIDEOPAIML/)


