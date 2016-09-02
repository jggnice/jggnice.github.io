all : CNAME
		
		git commit -m "new post"
		echo "按任意键继续"
		read -n 1
		git push -u origin master
