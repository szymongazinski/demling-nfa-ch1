# Zasady projektu

- Repozytorium `demling-nfa-ch1` jest prywatne.
- Na polecenie użytkownika projekt rozpoczyna się bez treści merytorycznej.
  Nie kopiuj książki, dawnych opracowań ani notatek bez nowego polecenia.
- W katalogu głównym utrzymuj dwa aktualne PDF-y i folder `projekt/`.
  Źródła, materiały, grafika oraz pliki robocze mają pozostawać w `projekt/`.
  Standardowe ukryte metadane Git znajdują się w katalogu głównym repozytorium.
- Oba PDF-y buduj ze wspólnej treści: `latex/main.tex` i `latex/main-wyklady.tex`.
- Treść edytuj w osobnych plikach `latex/rozdzialy/00-...tex` do `06-...tex`.
  Pliki obejmują wprowadzenie i paragrafy §1-§6 rozdziału 1 książki.
  `main.tex` ustala ich kolejność i wspólny rozdział; nie przywracaj jednego
  zbiorczego pliku `tresc.tex`. Nie utożsamiaj numeru pliku z numerem wykładu.
  Początki wykładów zaznaczaj wewnątrz plików z treścią.
- Zachowuj A4, PL Roman 12 pt, klasyczny skład i czarne klikalne odnośniki.
- Granice wykładów ustalaj z użytkownikiem. Polecenie
  `\poczatekwykladu{numer}` pokazuje oznaczenie tylko w wariancie wykładowym.
  Nie wyznaczaj granic na podstawie dat plików lub podziału książki.
- Rodzaje elementów matematycznych mają osobne liczniki resetowane przy rozdziale.
  Podział na wykłady nie resetuje liczników i nie zmienia numeracji treści.
- Materiały wejściowe przechowuj w `materialy/`, rysunki i źródła w `grafika/`.
- Po zmianie uruchom `kompiluj.ps1`, sprawdź logi, odnośniki oraz wygląd obu PDF-ów.
- Podczas pracy uruchamiaj
  `C:\Users\szymo\AppData\Local\Programs\easyshut\EasyShut.exe -n`
  i sprawdzaj `-status`. Najpierw upewnij się, że wersja respektuje wygaszanie
  ekranu według ustawień Windows. Nie dodawaj `-screen_on`.
  Po pracy pozostaw EasyShut na „Nigdy”, jego główne okno otwarte i komputer włączony.
  Nie planuj czasowego wyłączenia komputera.
