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
    │   └── rozdzialy/
    │       ├── 00-wprowadzenie.tex
    │       ├── 01-jednoznacznosc-stopnia.tex
    │       ├── 02-konstrukcja-stopnia.tex
    │       ├── 03-wlasnosci-stopnia.tex
    │       ├── 04-twierdzenie-borsuka.tex
    │       ├── 05-wzor-iloczynowy.tex
    │       └── 06-uwagi-koncowe.tex
    ├── materialy/
    ├── grafika/
    ├── kompiluj.ps1
    ├── kompiluj.cmd
    └── demling-nfa-ch1.code-workspace
```

Oba PDF-y zawierają obecnie stronę tytułową, spis treści i nagłówki części.
Treść merytoryczna pozostaje pusta; w źródłach są komentarze ułatwiające edycję.
Wariant ogólny i wariant z podziałem na wykłady korzystają z tych samych źródeł.
Format: A4, PL Roman 12 pt, klasyczny skład, czarne klikalne odnośniki.

## Edycja w VS Code

Otwórz `demling-nfa-ch1.code-workspace` z tego folderu. Obszar roboczy
pokazuje całe repozytorium wraz z dwoma PDF-ami w katalogu głównym.
Faktyczną treść wpisuj bezpośrednio w odpowiednim pliku w `latex/rozdzialy/`,
pod aktywnym nagłówkiem `\section{...}`. Każdy plik obejmuje jedną część
rozdziału 1 książki; prefiksy 01-06 odpowiadają paragrafom §1-§6, nie wykładom.
Plik `00-wprowadzenie.tex` obejmuje wprowadzenie przed §1.
W komentarzach przygotowano nagłówki podsekcji: usuń początkowy `%`,
gdy chcesz włączyć daną podsekcję, i wpisz pod nią treść.

`latex/main.tex` ustala tytuł, spis treści i kolejność plików przez `\input`.
Nie wpisuj w nim opracowania i nie dodawaj osobnego `\chapter` do każdego pliku:
wszystkie pliki należą do jednego rozdziału książki.

Początek wykładu oznaczaj **w pliku z treścią**, dokładnie w miejscu,
w którym wykład się zaczyna, np.:

```latex
\subsection{Oznaczenia}

\poczatekwykladu{1}

Tutaj wpisz treść pierwszego wykładu.

\poczatekwykladu{2}

Tutaj wpisz dalszą treść, od początku drugiego wykładu.
```

Przykład powyżej pokazuje składnię; nie jest wstawiony do skryptu.
Wykład może zaczynać się w środku podsekcji i obejmować kilka plików.
Znacznika nie powtarzaj przy przejściu do kolejnego pliku, jeśli wykład trwa dalej.
Granice wykładów wynikają wyłącznie ze wskazówek użytkownika.
Znaczniki są widoczne tylko w PDF-ie z podziałem na wykłady.

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
