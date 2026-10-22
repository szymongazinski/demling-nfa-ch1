# Zasady projektu

- Repozytorium `demling-nfa-ch1` pozostaje prywatne.
- Na polecenie użytkownika z 22 października 2026 r. usunięto wcześniejszą treść,
  grafikę matematyczną, dodatki oraz podział na rozdziały i wykłady.
  Nie przywracaj ich ani nie kopiuj dawnych opracowań bez nowego polecenia.
- Utrzymuj dokładnie jeden plik LaTeX: `latex/main.tex`.
  Preambuła, okładka i cała treść mają być w tym pliku; nie dziel go przez `\input`.
- Utrzymuj jeden wynikowy PDF: `Demling-NFA-ch1.pdf` w katalogu głównym
  repozytorium, poza `projekt/` i `latex/`. Nie twórz wariantu wykładowego.
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
- Po zmianie uruchom `kompiluj.ps1`, sprawdź logi, odnośniki i wygląd PDF-a.
  Pliki kompilacji pozostają w ignorowanym katalogu `build/`.
- Podczas pracy uruchamiaj
  `C:\Users\szymo\AppData\Local\Programs\easyshut\EasyShut.exe -n`
  i sprawdzaj `-status`. Najpierw upewnij się, że wersja respektuje wygaszanie
  ekranu według ustawień Windows. Nie dodawaj `-screen_on`.
  Po pracy pozostaw EasyShut na „Nigdy”, jego główne okno otwarte i komputer włączony.
  Nie planuj czasowego wyłączenia komputera.
