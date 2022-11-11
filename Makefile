all: slides-light.html

standalone: slides.html

slides-light.html: slides.md template.html
	pandoc -t dzslides \
	      --template template.html \
	      --highlight-style zenburn \
	       -s slides.md \
	       -o slides-light.html

slides.html: slides.md template.html
	pandoc -t dzslides \
	      --self-contained \
	      --template template.html \
	      --highlight-style zenburn \
	      --metadata display-notes \
	       -s slides.md \
	       -o slides.html

clean:
	-rm slides.html
	-rm slides-light.html
