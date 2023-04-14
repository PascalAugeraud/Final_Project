
all: README.md

README.md: guessinggame.sh
	echo "Title : Final Project for Unix Workbench Coursera Course" > README.md
	echo -n "Current Date: " >> README.md
	date >> README.md
	echo -n "Number of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
