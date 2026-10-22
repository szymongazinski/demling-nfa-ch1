# Nieliniowa Analiza Funkcjonalna

Jeden dokument LaTeX i jeden PDF. Dotychczasowa treść została usunięta
na polecenie użytkownika. Dokument zawiera nową ilustrowaną okładkę;
miejsce na opracowanie pozostaje puste.

```text
demling-nfa-ch1/
├── Demling-NFA-ch1.pdf
└── projekt/
    ├── latex/main.tex
    ├── grafika/okladka.png
    ├── grafika/okladka-prompt.txt
    ├── kompiluj.ps1
    ├── kompiluj.cmd
    └── demling-nfa-ch1.code-workspace
```

Otwórz obszar roboczy `demling-nfa-ch1.code-workspace` w VS Code.
Całą treść wpisuj w `latex/main.tex`, pod komentarzem
`TU WPISUJ CAŁĄ TREŚĆ OPRACOWANIA`, przed `\end{document}`.
Preambuła i okładka znajdują się w tym samym pliku.
Nie ma podziału na rozdziały ani wykłady i nie ma osobnych wariantów dokumentu.

`Ctrl+S` zapisuje tekst, `Ctrl+Shift+B` buduje PDF w katalogu głównym
repozytorium, poza folderami `latex/` i `projekt/`.
Dwukrotne kliknięcie `kompiluj.cmd` buduje i otwiera ten sam PDF.
Wymagany jest `pdflatex` z MiKTeX lub TeX Live dostępny w PATH.
Pliki robocze kompilacji są w `build/` i nie trafiają do Git.

Okładka została wygenerowana wbudowanym ImageGen z motywów ośmiu
obrazów użytkownika. Prompt zapisano obok obrazu.
Pierwsza strona to jedna kompozycja A4. Tekst opracowania: PL Roman, 12 pt.
Repozytorium jest publiczne: [szymongazinski/demling-nfa-ch1](https://github.com/szymongazinski/demling-nfa-ch1).
