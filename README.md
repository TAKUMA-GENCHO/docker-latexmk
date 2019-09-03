# ubuntu-latexmk

Ubuntu base Latex enviromment on Docker

## Usage

1. build
  ```bash
  docker build -t ubuntu-latexmk .
  ```
2. run
  ```bash
  docker run --rm -it -v $PWD:/home/user/workdir ubuntu-latex
  ```
3. compile tex file
  ```bash
  latexmk -pvc main.tex
  ```
