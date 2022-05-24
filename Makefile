latex: lessonsLatex
lessonsLatex: $(patsubst notes/%.tex,output/%.pdf,$(wildcard notes/*.tex))



output/%.pdf: notes/%.tex activity-snippets/*.tex resources/lesson-head.tex resources/discrete-math-packages.tex
	mkdir -p output; cd notes; pdflatex -output-directory ../output $(<F) 

website: latex clean-tex 

clean-tex: 
	cd output; rm -f *.out *.log *.aux
