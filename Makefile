
build:
	hugo --minify

new-post:
	@read -p "Enter post title: " title; \
	postname=$$(echo "$$title" | sed 's/[[:punct:]]//g' | tr '[:upper:]' '[:lower:]' | tr ' ' '_'); \
	echo "Post name: $$postname"; \
	hugo new content ./content/posts/$$postname.org
