# LaTeX Template für wissenschaftliche Arbeiten an der Universität Regensburg

Dieses LaTeX Template ist nach den Vorgaben aus diesen Quellen erstellt worden:    
- http://www.uni-regensburg.de/sprache-literatur-kultur/medieninformatik/medien/materialien/formatvorlage_seminararbeit_iw_mi_110124_v12_final.dotx.zip    
- http://www.uni-regensburg.de/sprache-literatur-kultur/romanistik/medien/leitfaden_schriftliche_arbeiten.pdf
- https://github.com/UniRegensburg/mi-document-templates (Word Vorlage)

Dieses Template wird unregelmäßig aktualisiert und an die aktuelle Word-Vorlage angepasst. Vor der Verwendung sollte das Template mit der Word-Vorlage abgeglichen werden.

## Installation

WIP

## Verwendung
Um das Dokument kompilieren zu können wird XeLaTeX benötigt. Vom Template wird für Seminararbeiten und Abschlussarbeiten jeweils eine Variante bereitgestellt. Diese unterscheiden sich nur in der Gestaltung der Titelseite. Für eine Seminararbeit wird die Dokumentklasse ```mi-seminar``` bereitgestellt. Für Abschlussarbeiten ```mi-graduation```.    

Ein LaTeX Dokument für eine Seminararbeit muss also lediglich die Klasse ```mi-seminar``` verwenden:    
    \documentclass{mi-seminar}

Es können keine Parameter an die Dokumentklasse übergeben werden, da diese durch die Vorlage vorgegeben sind.    
Für nähere Informationen zur Verwendung liegt ein Beispieldokument  ```document.tex``` bei.
