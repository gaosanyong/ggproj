all : guessinggame.sh
	echo ggproj > README.md
	date +"%Y-%m-%d %H:%M:%S" >> README.md
	wc -l guessinggame.sh | cut -d " " -f 1 >> README.md
clean :
	rm README.md
