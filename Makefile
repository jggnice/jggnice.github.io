all : CNAME
		git commit -m "new post"
		echo "按任意键继续"
		@echo off
		read -n 1
		@echo on
		git push -u origin master
