# LaTeX Template für wissenschaftliche Arbeiten an der Universität Regensburg

Dieses LaTeX-Template ist nach den Vorgaben aus diesen Quellen erstellt worden:    
- http://www.uni-regensburg.de/sprache-literatur-kultur/medieninformatik/medien/materialien/formatvorlage_seminararbeit_iw_mi_110124_v12_final.dotx.zip    
- http://www.uni-regensburg.de/sprache-literatur-kultur/romanistik/medien/leitfaden_schriftliche_arbeiten.pdf
- https://github.com/UniRegensburg/mi-document-templates (Word-Vorlage)

Dieses Template wird unregelmäßig aktualisiert und an die aktuelle Word-Vorlage angepasst. Vor der Verwendung sollte das Template mit der Word-Vorlage abgeglichen werden.

Bei Fragen und Problemen mit dem Template, wenden Sie sich an andreas.schmid@ur.de.

Verbesserungen des Templates dürfen gerne über GitHub eingebracht werden.

Das Template wurde unter Debian 10 mit TeXlive, TeXstudio, Texmaker und Overleaf getestet.

## Installation und Verwendung

### Abhängigkeiten

- Um das Template zu verwenden, empfehlen wir XeLaTeX. Dedizierte LaTeX-Editoren liefern dies bereits mit. Um das Template über die Kommandozeile kompilieren zu können, installieren Sie folgende Pakete händisch:

```
sudo apt install texlive
sudo apt install texlive-xetex
sudo apt install texlive-lang-german
sudo apt install texlive-lang-science
sudo apt install texlive-fonts-extra
sudo apt install texlive-bibtex-extra
```

### Installation

#### Linux + CLI

- Kopieren Sie das Verzeichnis ```mi-document``` nach ```~/texmf/tex/latex/```.

- Führen Sie im Verzeichnis des Templates (```document.tex```) das Kommando ```make``` aus - dadurch sollte ein PDF des Templates erstellt werden. Sollten Fehler aufgrund von fehlenden Paketen auftreten, installieren Sie diese. Wurde das PDF erfolgreich erstellt, so können Sie das Template für Ihre Arbeit verwenden.

#### TeXstudio

- Kopieren Sie alle Dateien aus dem Verzeichnis ```mi-document``` in das Verzeichnis, in dem sich auch die ```.tex```-Datei Ihrer Arbeit befindet (beispielsweise die Vorlage ```document.tex```).

- Stellen Sie in TexStudio den *Default Compiler* auf *XeLaTeX* (Options -> Configure TeXstudio -> Build)

- Sollten Fehler aufgrund von fehlenden Paketen auftreten, installieren Sie diese.

#### Texmaker

- Kopieren Sie das Verzeichnis ```mi-document``` nach ```~/texmf/tex/latex/``` (Linux!).

- Verwenden Sie *XeLaTeX* als Compiler. Diesen können Sie unter "Options -> Configure Texmaker -> Quick Build" einstellen.

### Overleaf

- Laden Sie das gezippte Template (im Verzeichnis *Overleaf*) hoch.

- Stellen Sie den Compiler auf XeLaTeX um ("Menu -> Compiler").

- Kompilieren Sie ```document.tex```.

### Verwendung

- Im Dokument ```document.tex``` finden Sie Informationen zur Verwendung des Template. Wir empfehlen Ihnen, Ihre Arbeit auf dieses Dokument aufzubauen.

- Die Kommentare in ```document.tex``` sowie der Inhalt der Formatvorlage geben Ihnen Hinweise zur Verwendung des Templates und zur Gestaltung Ihrer Arbeit.

- Verwenden Sie die Dokumentklasse ```mi-seminar``` für Seminararbeiten und ```mi-graduation``` für Abschlussarbeiten. Diese unterscheiden Sich größtenteils in der Gestaltung der Titelseite.
