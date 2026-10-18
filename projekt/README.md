# Demling NFA - rozdział 1

Pusty projekt do przyszłego opracowania rozdziału 1 książki Klausa Deimlinga.
Repozytorium jest prywatne. Nie dodano książki, wcześniejszych opracowań ani notatek.

## Układ

```text
demling-nfa-ch1/
├── Demling-NFA-ch1.pdf
├── Demling-NFA-ch1-wyklady.pdf
└── projekt/
    ├── latex/
    │   ├── main.tex
    │   ├── main-wyklady.tex
    │   ├── preambula.tex
    │   └── rozdzialy/tresc.tex
    ├── materialy/
    ├── grafika/
    ├── kompiluj.ps1
    ├── kompiluj.cmd
    └── demling-nfa-ch1.code-workspace
```

Oba PDF-y zawierają obecnie wyłącznie stronę tytułową. Treść pozostaje pusta.
Wariant ogólny i wariant z podziałem na wykłady korzystają z tych samych źródeł.
Format: A4, PL Roman 12 pt, klasyczny skład, czarne klikalne odnośniki.

## Edycja w VS Code

Otwórz `demling-nfa-ch1.code-workspace` z tego folderu. Obszar roboczy
pokazuje całe repozytorium wraz z dwoma PDF-ami w katalogu głównym.
Treść edytuje się w `latex/rozdzialy/tresc.tex`; kolejne pliki można dodawać
w tym samym folderze i włączać poleceniem `\input` w `latex/main.tex`.

Po dodaniu pierwszej treści włącz spis treści w `latex/main.tex`.
Granice wykładów oznaczaj `\poczatekwykladu{numer}` wyłącznie
na podstawie wskazówek użytkownika. Są widoczne tylko w wariancie wykładowym.

## Budowanie PDF-ów

Wymagany jest `pdflatex` z MiKTeX lub TeX Live dostępny w PATH.
Na tym komputerze MiKTeX jest zainstalowany.

- W VS Code: `Ctrl+Shift+B` buduje oba PDF-y.
- Dwukrotne kliknięcie `kompiluj.cmd` buduje i otwiera oba PDF-y.
- W PowerShell, z katalogu głównego repozytorium:

```powershell
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\projekt\kompiluj.ps1
```

Wyniki są aktualizowane w katalogu głównym po poprawnej kompilacji obu wariantów.
Pliki robocze trafiają do `projekt/build/` i nie są wersjonowane.
Polecenia Git działają z katalogu głównego repozytorium lub z `projekt/`.
