main: main.o
	gcc -o main main.o

main.o: main.rs
	rustc -g -C opt-level=z --emit=obj -C panic="abort" main.rs