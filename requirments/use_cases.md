# Przypadki użycia

Każdy przypadek użycia ma unikalny identyfikator, powiązane wymagania oraz miejsce na opis. Kliknięcie identyfikatora wymagania przenosi do niego w [dokumencie wymagań funkcjonalnych](functional.md).

## A. Konto użytkownika

### UC-01 — Zarejestruj konto

- **Powiązane wymagania:** [FR-001](functional.md#fr-001)
- **Priorytet:** MVP
- **Opis:** utworzenie konta użytkownika przez podanie adresu e-mail i hasła, a następnie potwierdzenie rejestracji poprzez kliknięcie w link aktywacyjny wysłany na podany adres e-mail.
- **Scenariusz**:
  1. Użytkownik wypełnia formularz rejestracyjny, podając adres e-mail i hasło.
  2. System weryfikuje poprawność danych i tworzy konto użytkownika.
  3. System wysyła wiadomość e-mail z linkiem aktywacyjnym na podany adres e-mail.
  4. Użytkownik klika w link aktywacyjny, aby potwierdzić rejestrację.
  5. System aktywuje konto użytkownika i umożliwia logowanie.

### UC-02 — Zaloguj się

- **Powiązane wymagania:** [FR-002](functional.md#fr-002)
- **Priorytet:** MVP
- **Opis:** logowanie użytkownika poprzez podanie adresu e-mail i hasła, a następnie weryfikacja danych i umożliwienie dostępu do systemu.
- **Scenariusz**:
  1. Użytkownik wypełnia formularz logowania, podając adres e-mail i hasło.
  2. System weryfikuje poprawność danych i sprawdza, czy konto użytkownika jest aktywne.
  3. Jeśli dane są poprawne i konto aktywne, system umożliwia dostęp do systemu.
  4. Jeśli dane są niepoprawne lub konto nieaktywne, system wyświetla odpowiedni komunikat o błędzie.

### UC-03 — Wyloguj się

- **Powiązane wymagania:** [FR-003](functional.md#fr-003)
- **Priorytet:** MVP
- **Opis:**

### UC-04 — Zmień hasło

- **Powiązane wymagania:** [FR-006](functional.md#fr-006)
- **Priorytet:** Rozszerzenie
- **Opis:**

### UC-05 — Odzyskaj dostęp do konta

- **Powiązane wymagania:** [FR-007](functional.md#fr-007)
- **Priorytet:** Rozszerzenie
- **Opis:**

## B. Zarządzanie projektami

### UC-06 — Utwórz projekt

- **Powiązane wymagania:** [FR-008](functional.md#fr-008), [FR-009](functional.md#fr-009)
- **Priorytet:** MVP
- **Opis:** utworzenie nowego projektu poprzez podanie jego nazwy, opisu, celu projektu, a następnie zapisanie projektu w systemie.
- **Scenariusz**:
  Użutkownik musi być zalogowany, aby móc utworzyć projekt.
  1. Użytkownik wypełnia formularz tworzenia projektu, podając nazwę, opis i cel projektu.
  2. System weryfikuje poprawność danych i tworzy nowy projekt.
  3. System zapisuje projekt w bazie danych i wyświetla potwierdzenie utworzenia projektu.

### UC-07 — Przeglądaj projekty

- **Powiązane wymagania:** [FR-010](functional.md#fr-010), [FR-011](functional.md#fr-011)
- **Priorytet:** MVP
- **Opis:** przeglądanie listy projektów utworzonych przez użytkownika.
- **Scenariusz**:
  Użutkownik musi być zalogowany, aby móc przeglądać projekty.
  1. Użytkownik wybiera opcję przeglądania projektów w interfejsie systemu.
  2. System pobiera listę projektów utworzonych przez użytkownika z bazy danych.
  3. System wyświetla listę projektów wraz z ich nazwami, opisami i celami.

### UC-08 — Edytuj projekt

- **Powiązane wymagania:** [FR-012](functional.md#fr-012)
- **Priorytet:** MVP
- **Opis:**

### UC-09 — Usuń projekt

- **Powiązane wymagania:** [FR-013](functional.md#fr-013)
- **Priorytet:** MVP
- **Opis:**

### UC-10 — Zarządzaj postępem projektu

- **Powiązane wymagania:** [FR-016](functional.md#fr-016), [FR-017](functional.md#fr-017), [FR-018](functional.md#fr-018), [FR-019](functional.md#fr-019), [FR-020](functional.md#fr-020), [FR-021](functional.md#fr-021)
- **Priorytet:** MVP
- **Opis:**

## C. Zarządzanie wymaganiami

### UC-11 — Dodaj wymaganie ręcznie

- **Powiązane wymagania:** [FR-022](functional.md#fr-022), [FR-023](functional.md#fr-023)
- **Priorytet:** MVP
- **Opis:** dodanie nowego wymagania poprzez podanie jego nazwy, opisu, priorytetu, a następnie zapisanie wymagania w systemie i oznaczenie go jako funkcjonalnego lub jakościowego.
- **Scenariusz**:
  Użutkownik musi być zalogowany, aby móc dodać wymaganie.
  1. Użytkownik wybiera opcję dodania wymagania w interfejsie systemu.
  2. System wyświetla formularz dodawania wymagania, w którym użytkownik podaje nazwę, opis i priorytet wymagania oraz oznacza je jako funkcjonalne lub jakościowe.
  3. System weryfikuje poprawność danych i zapisuje nowe wymaganie w bazie danych.
  4. System wyświetla potwierdzenie dodania wymagania.

### UC-12 — Generuj wymagania z wykorzystaniem LLM

- **Powiązane wymagania:** [FR-025](functional.md#fr-025), [FR-026](functional.md#fr-026), [FR-031](functional.md#fr-031), [FR-033](functional.md#fr-033)
- **Priorytet:** MVP
- **Opis:** generowanie wymagań funkcjonalnych i jakościowych z wykorzystaniem modelu językowego (LLM) na podstawie opisu wprowadzonego ręcznie i wzcześniej określonych danych projektu (wymagań, opisu, celu, nazwy), a następnie zapisanie wygenerowanych wymagań w systemie.
- **Scenariusz**:
  Użutkownik musi być zalogowany, aby móc generować wymagania.
  1. Użytkownik wybiera opcję generowania wymagań w interfejsie systemu.
  2. System wyświetla formularz generowania wymagań, w którym użytkownik podaje opis wymagania.
  3. System przesyła dane do modelu językowego (LLM) w celu wygenerowania wymagań funkcjonalnych i jakościowych.
  4. Model językowy (LLM) generuje wymagania na podstawie dostarczonych danych.
  5. System wyświetla wymagania do potwierdzenia.

### UC-13 — Doprecyzuj opis systemu

- **Powiązane wymagania:** [FR-024](functional.md#fr-024), [FR-027](functional.md#fr-027), [FR-028](functional.md#fr-028), [FR-029](functional.md#fr-029), [FR-030](functional.md#fr-030)
- **Priorytet:** MVP
- **Opis:**

### UC-14 — Przeglądaj wymagania

- **Powiązane wymagania:** [FR-034](functional.md#fr-034), [FR-035](functional.md#fr-035)
- **Priorytet:** MVP
- **Opis:** wyświetlanie listy wymagań funkcjonalnych i jakościowych w systemie sortowanych według czasu dodania.
- **Scenariusz**:
  Użutkownik musi być zalogowany, aby móc przeglądać wymagania.
  1. Użytkownik wybiera opcję przeglądania wymagań w interfejsie systemu.
  2. System pobiera listę wymagań funkcjonalnych i jakościowych z bazy danych.
  3. System wyświetla listę wymagań posortowaną według czasu dodania.

### UC-15 — Edytuj wymaganie

- **Powiązane wymagania:** [FR-036](functional.md#fr-036)
- **Priorytet:** MVP
- **Opis:**

### UC-16 — Usuń wymaganie

- **Powiązane wymagania:** [FR-037](functional.md#fr-037)
- **Priorytet:** MVP
- **Opis:**

### UC-17 — Zatwierdź propozycje wymagań

- **Powiązane wymagania:** [FR-031](functional.md#fr-031), [FR-032](functional.md#fr-032)
- **Priorytet:** MVP
- **Opis:**

## D. Zarządzanie przypadkami użycia

### UC-18 — Dodaj przypadek użycia ręcznie

- **Powiązane wymagania:** [FR-042](functional.md#fr-042), [FR-050](functional.md#fr-050), [FR-051](functional.md#fr-051), [FR-052](functional.md#fr-052)
- **Priorytet:** MVP
- **Opis:**

### UC-19 — Generuj przypadki użycia z wykorzystaniem LLM

- **Powiązane wymagania:** [FR-043](functional.md#fr-043), [FR-044](functional.md#fr-044), [FR-045](functional.md#fr-045), [FR-048](functional.md#fr-048), [FR-049](functional.md#fr-049), [FR-050](functional.md#fr-050)
- **Priorytet:** MVP
- **Opis:**

### UC-20 — Doprecyzuj przypadki użycia

- **Powiązane wymagania:** [FR-046](functional.md#fr-046), [FR-047](functional.md#fr-047)
- **Priorytet:** MVP
- **Opis:**

### UC-21 — Przeglądaj przypadki użycia

- **Powiązane wymagania:** [FR-053](functional.md#fr-053)
- **Priorytet:** MVP
- **Opis:**

### UC-22 — Edytuj przypadek użycia

- **Powiązane wymagania:** [FR-054](functional.md#fr-054)
- **Priorytet:** MVP
- **Opis:**

### UC-23 — Usuń przypadek użycia

- **Powiązane wymagania:** [FR-055](functional.md#fr-055)
- **Priorytet:** MVP
- **Opis:**

### UC-24 — Powiąż przypadek użycia z wymaganiami

- **Powiązane wymagania:** [FR-056](functional.md#fr-056)
- **Priorytet:** MVP
- **Opis:**

## E. Zarządzanie scenariuszami

### UC-25 — Dodaj scenariusz ręcznie

- **Powiązane wymagania:** [FR-059](functional.md#fr-059), [FR-060](functional.md#fr-060), [FR-067](functional.md#fr-067), [FR-068](functional.md#fr-068), [FR-069](functional.md#fr-069), [FR-070](functional.md#fr-070)
- **Priorytet:** MVP
- **Opis:**

### UC-26 — Generuj scenariusz z wykorzystaniem LLM

- **Powiązane wymagania:** [FR-061](functional.md#fr-061), [FR-062](functional.md#fr-062), [FR-063](functional.md#fr-063), [FR-064](functional.md#fr-064), [FR-065](functional.md#fr-065), [FR-066](functional.md#fr-066)
- **Priorytet:** MVP
- **Opis:**

### UC-27 — Przeglądaj scenariusze przypadku użycia

- **Powiązane wymagania:** [FR-071](functional.md#fr-071)
- **Priorytet:** MVP
- **Opis:**

### UC-28 — Edytuj scenariusz

- **Powiązane wymagania:** [FR-069](functional.md#fr-069), [FR-072](functional.md#fr-072)
- **Priorytet:** MVP
- **Opis:**

### UC-29 — Usuń scenariusz

- **Powiązane wymagania:** [FR-072](functional.md#fr-072)
- **Priorytet:** MVP
- **Opis:**

### UC-30 — Regeneruj scenariusz

- **Powiązane wymagania:** [FR-073](functional.md#fr-073)
- **Priorytet:** MVP
- **Opis:**

## F. Diagramy UML

### UC-31 — Generuj diagram przypadków użycia

- **Powiązane wymagania:** [FR-077](functional.md#fr-077)
- **Priorytet:** MVP
- **Opis:**

### UC-32 — Generuj diagram sekwencji

- **Powiązane wymagania:** [FR-079](functional.md#fr-079)
- **Priorytet:** MVP
- **Opis:**

### UC-33 — Przeglądaj diagram UML

- **Powiązane wymagania:** [FR-078](functional.md#fr-078), [FR-080](functional.md#fr-080)
- **Priorytet:** MVP
- **Opis:**

### UC-34 — Eksportuj diagram UML

- **Powiązane wymagania:** [FR-081](functional.md#fr-081), [FR-082](functional.md#fr-082), [FR-105](functional.md#fr-105)
- **Priorytet:** MVP
- **Opis:**

## G. Eksport i analiza

### UC-35 — Eksportuj dane projektu

- **Powiązane wymagania:** [FR-104](functional.md#fr-104)
- **Priorytet:** MVP
- **Opis:**

### UC-36 — Analizuj jakość wymagań

- **Powiązane wymagania:** Brak bezpośrednio powiązanego wymagania
- **Priorytet:** Rozszerzenie
- **Opis:**

**Do uzupełnienia:** UC-36 nie ma odpowiadającego mu wymagania w [functional.md](functional.md). Ponadto FR-039–FR-041, FR-058, FR-075–FR-076 i FR-084–FR-087 nie są obecnie powiązane z żadnym przypadkiem użycia.
