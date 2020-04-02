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

- Um das Template zu verwenden, wird TeX Live benötigt. Dies muss separat installiert werden. Unter Windows kann es sein, dass außerdem MiKTeX benötigt wird.

- Als LaTeX-Compiler empfehlen wir XeLaTeX. Dedizierte LaTeX-Editoren liefern dies bereits mit.

- Installation von TeX Live und XeLaTeX unter Linux:

```
sudo apt install texlive
sudo apt install texlive-xetex
sudo apt install texlive-lang-german
sudo apt install texlive-lang-science
sudo apt install texlive-fonts-extra
sudo apt install texlive-bibtex-extra
```

- Unter anderen Betriebssystemen müssen TeX Live, MiKTeX und Editoren von den jeweiligen Websites heruntergeladen und installiert werden.

### Installation

#### Linux + CLI

- Kopieren Sie das Verzeichnis ```mi-document``` nach ```~/texmf/tex/latex/```.

- Führen Sie im Verzeichnis des Templates (```document.tex```) das Kommando ```make``` aus - dadurch sollte ein PDF des Templates erstellt werden. Sollten Fehler aufgrund von fehlenden Paketen auftreten, installieren Sie diese. Wurde das PDF erfolgreich erstellt, so können Sie das Template für Ihre Arbeit verwenden.

#### TeXstudio

- Kopieren Sie alle Dateien aus dem Verzeichnis ```mi-document``` in das Verzeichnis, in dem sich auch die ```.tex```-Datei Ihrer Arbeit befindet (beispielsweise die Vorlage ```document.tex```).

- Stellen Sie in TexStudio den *Default Compiler* auf *XeLaTeX* (Options -> Configure TeXstudio -> Build)

- Sollten Fehler aufgrund von fehlenden Paketen auftreten, installieren Sie diese.

#### Texmaker

- Installieren Sie MiKTeX.

- Installieren Sie über MiKTeX die Pakete ```tex-gyre```, ```nimbus15``` und ```dejavu-otf```.

- Linux: Kopieren Sie das Verzeichnis ```mi-document``` nach ```~/texmf/tex/latex/```.

- Windows: Kopieren Sie den Inhalt des Verzeichnis ```mi-document``` in dessen Elternverzeichnis (welches ```document.tex``` enthält).

- Verwenden Sie *XeLaTeX* als Compiler. Diesen können Sie unter "Options -> Configure Texmaker -> Quick Build" einstellen.

#### Overleaf

- Zippen Sie den gesamten Inhalt des *latex*-Ordners.

- Erstellen Sie in Overleaf ein neues Projekt ("New Project -> Upload Project") und laden Sie das gezippte Template hoch.

- Stellen Sie den Compiler auf XeLaTeX um ("Menu -> Compiler").

- Kompilieren Sie ```document.tex```.


##### MacTex + TexShop (getestet unter 10.15.3, Catalina)

- Klonen Sie den aktuellen Stand des Repositories und wechseln in den ```latex```Ordner

- Kopieren Sie den Inhalt von ```mi-document``` in diesen Ordner

- Führen Sie ```make```aus

- Installieren Sie manuell die Fonts **DejaVuSans**, **GyreTex Pagella** und **Nimbus Sans** (z.B. von https://fontsquirrel.com)

- Öffnen Sie ```document.tex``` in TexShop

- Wechseln Sie den Compiler in TexShop auf ```XeLatTex``

### Verwendung

- Im Dokument ```document.tex``` finden Sie Informationen zur Verwendung des Template. Wir empfehlen Ihnen, Ihre Arbeit auf dieses Dokument aufzubauen.

- Die Kommentare in ```document.tex``` sowie der Inhalt der Formatvorlage geben Ihnen Hinweise zur Verwendung des Templates und zur Gestaltung Ihrer Arbeit.

- Verwenden Sie die Dokumentklasse ```mi-seminar``` für Seminararbeiten und ```mi-graduation``` für Abschlussarbeiten. Diese unterscheiden Sich größtenteils in der Gestaltung der Titelseite.
