all : guessinggame.sh
	echo "# ggproj" > README.md
	echo "<br/>" >> README.md
	echo "guessinggame.sh created at:" >> README.md
	date +"%Y-%m-%d %H:%M:%S" >> README.md
	echo "<br/>" >> README.md
	echo "with " >> README.md
	wc -l guessinggame.sh | cut -d " " -f 1 >> README.md
	echo " lines" >> README.md
clean :
	rm README.md
