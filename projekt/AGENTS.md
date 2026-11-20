# Zasady projektu

- Repozytorium `demling-nfa-ch1` jest publiczne zgodnie z poleceniem użytkownika
  z 23 października 2026 r. Zmieniaj widoczność wyłącznie na nowe, wyraźne
  polecenie użytkownika; nie przywracaj ustawienia prywatnego.
- Nie przywracaj dawnych opracowań, rozdziałów ani dodatków bez nowego
  polecenia użytkownika.
- Utrzymuj dokładnie jeden plik LaTeX: `latex/main.tex`.
  Preambuła, okładka i cała treść mają być w tym pliku; nie dziel go przez `\input`.
- W katalogu głównym repozytorium, poza `projekt/` i `latex/`, utrzymuj:
  `Demling-NFA-ch1.pdf` (bez oznaczeń wykładów),
  `Demling-NFA-ch1-wyklady.pdf` (z oznaczeniami wykładów)
  oraz niezmieniony PDF źródłowy `Demling_Nonlinear_Functional_Analysis_chapter1.pdf`.
- Oba opracowania buduj z tego samego `latex/main.tex`. Wariant wykładowy
  włącza flaga `Chronologia`; nie twórz osobnego pliku `.tex` ani kopii treści.
  Oznaczenia wykładów nie zmieniają numeracji matematycznej.
- `\poczatekwykladu{1}` stoi przed „Wstępem”; Wykład 1 kończy się przed
  Lematem 1. `\poczatekwykladu{2}` stoi bezpośrednio przed Lematem 1,
  a Wykład 2 obejmuje lemat i jego dowód. Używaj nagłówka z poziomą kreską,
  jak w skryptach teorii miary i rachunku prawdopodobieństwa.
- Pierwsza strona PDF-a to pełnostronicowa okładka `grafika/okladka.png`.
  Obrazy i wszystkie hasła stanowią jedną spójną kompozycję na jednej stronie A4.
- Tekst opracowania wpisuj pod oznaczonym komentarzem w `latex/main.tex`.
  Zachowuj PL Roman 12 pt, A4 i czarne klikalne odnośniki.
- Narracyjne komentarze użytkownika są treścią opracowania. Zachowuj ich
  potoczny ton i sformułowania, poprawiając składnię, gramatykę i interpunkcję.
- Oddzielaj dyktowaną treść matematyczną od wskazówek redakcyjnych.
  Nie przenoś do opracowania odniesień do prompta, toku rozmowy ani wykonywania
  poleceń użytkownika. Dowody mają zawierać argumentację matematyczną.
- Pisz zwięźle i rzeczowo, bez pustych sformułowań. Każde zdanie ma wnosić
  treść matematyczną lub potrzebne uzasadnienie. Nie powtarzaj bez potrzeby
  nazw metod dowodu (np. „na mocy charakteryzacji ciągowej”) ani wniosku,
  który został już zapisany bezpośrednio przed nim we wzorze.
- Po zmianie uruchom `kompiluj.ps1`, sprawdź logi, odnośniki i wygląd obu PDF-ów.
  Pliki kompilacji pozostają w ignorowanym katalogu `build/`.
- Podczas pracy uruchamiaj
  `C:\Users\szymo\AppData\Local\Programs\easyshut\EasyShut.exe -n`
  i sprawdzaj `-status`. Najpierw upewnij się, że wersja respektuje wygaszanie
  ekranu według ustawień Windows. Nie dodawaj `-screen_on`.
  Po pracy pozostaw EasyShut na „Nigdy”, jego główne okno otwarte i komputer włączony.
  Nie planuj czasowego wyłączenia komputera.
