# Nieliniowa Analiza Funkcjonalna

Opracowanie z jednego pliku LaTeX, budowane w dwóch wariantach: bez oznaczeń
wykładów i z oznaczeniami wykładów. PDF źródłowy książki jest osobnym plikiem.

```text
demling-nfa-ch1/
├── Demling-NFA-ch1.pdf
├── Demling-NFA-ch1-wyklady.pdf
├── Demling_Nonlinear_Functional_Analysis_chapter1.pdf
└── projekt/
    ├── latex/main.tex
    ├── grafika/okladka.png
    ├── grafika/okladka-prompt.txt
    ├── grafika/splot-przyklad.png
    ├── grafika/fi-1-geogebra.png
    ├── kompiluj.ps1
    ├── kompiluj.cmd
    └── demling-nfa-ch1.code-workspace
```

## Edycja

Otwórz `demling-nfa-ch1.code-workspace` w VS Code i edytuj `latex/main.tex`.
Preambuła, okładka i całe opracowanie pozostają w tym jednym pliku.

- Wykład 1 zaczyna się przy „Wstępie” i trwa do miejsca przed Lematem 1.
- Wykład 2 obejmuje Lemat 1 wraz z jego dowodem.
- Wykład 3 wprowadza splot funkcji, Lemat 2a i rodzinę jąder wygładzających.
- Początki wykładów oznaczają polecenia `\poczatekwykladu{1}`, `\poczatekwykladu{2}` i `\poczatekwykladu{3}`.
- Wariant wykładowy pokazuje nagłówki „Wykład N” i poziomą kreskę, jak w skryptach teorii miary i rachunku prawdopodobieństwa.
- Wariant zwykły pomija te oznaczenia. Treść i numeracja matematyczna są wspólne.

## Kompilacja

`Ctrl+S` zapisuje tekst, a `Ctrl+Shift+B` buduje oba opracowania w głównym
katalogu repozytorium, obok folderu `projekt/`. Dwukrotne kliknięcie
`kompiluj.cmd` buduje i otwiera oba PDF-y.

Skrypt kompiluje ten sam `latex/main.tex` bez flagi i z flagą `Chronologia`.
Nie ma drugiej kopii treści ani dodatkowego pliku `.tex` dla wariantu wykładowego.
Wyniki aktualizują się po poprawnej kompilacji obu wariantów.
Pliki robocze pozostają w ignorowanym `build/`.
Wymagany jest `pdflatex` z MiKTeX lub TeX Live dostępny w PATH.

Plik `Demling_Nonlinear_Functional_Analysis_chapter1.pdf` skopiowano z pulpitu
użytkownika bez zmian; nie jest generowany przez skrypt kompilacji.

Okładka jest wspólna dla obu opracowań. Tekst: A4, PL Roman, 12 pt.
Repozytorium jest publiczne: [szymongazinski/demling-nfa-ch1](https://github.com/szymongazinski/demling-nfa-ch1).
