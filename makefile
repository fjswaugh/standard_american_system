system.pdf: ebu_convention_card.pdf *.tex tex/*.tex
	xelatex system.tex
	xelatex system.tex

ebu_convention_card.pdf: ebu_convention_card.odg
	libreoffice --headless --convert-to pdf ebu_convention_card.odg

clean:
	rm ebu_convention_card.pdf *.aux *.toc *.log *.out tex/*.aux
