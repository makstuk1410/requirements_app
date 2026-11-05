# Wymagania funkcjonalne

Dokument zawiera wymagania funkcjonalne systemu wraz z ich identyfikatorami i priorytetami. Powiązania wymagań z przypadkami użycia znajdują się w [katalogu przypadków użycia](use_cases.md).

## A. Rejestracja i uwierzytelnianie

| ID | Wymaganie | Priorytet |
| --- | --- | --- |
| <a id="fr-001"></a>FR-001 | System umożliwia użytkownikowi rejestrację konta za pomocą adresu e-mail i hasła. | MVP |
| <a id="fr-002"></a>FR-002 | System umożliwia użytkownikowi logowanie do systemu. | MVP |
| <a id="fr-003"></a>FR-003 | System umożliwia użytkownikowi wylogowanie się z systemu. | MVP |
| <a id="fr-004"></a>FR-004 | System umożliwia zalogowanemu użytkownikowi dostęp do własnych projektów. | MVP |
| <a id="fr-005"></a>FR-005 | System ogranicza dostęp do projektów i ich zawartości do uprawnionych użytkowników. | MVP |
| <a id="fr-006"></a>FR-006 | System umożliwia użytkownikowi zmianę hasła. | Rozszerzenie |
| <a id="fr-007"></a>FR-007 | System umożliwia odzyskanie dostępu do konta w przypadku utraty hasła. | Rozszerzenie |

## B. Zarządzanie projektami

| ID | Wymaganie | Priorytet |
| --- | --- | --- |
| <a id="fr-008"></a>FR-008 | System umożliwia utworzenie nowego projektu. | MVP |
| <a id="fr-009"></a>FR-009 | System umożliwia określenie nazwy, opisu i celu projektu. | MVP |
| <a id="fr-010"></a>FR-010 | System wyświetla listę projektów należących do użytkownika. | MVP |
| <a id="fr-011"></a>FR-011 | System umożliwia otwarcie istniejącego projektu i kontynuowanie pracy. | MVP |
| <a id="fr-012"></a>FR-012 | System umożliwia edycję informacji o projekcie. | MVP |
| <a id="fr-013"></a>FR-013 | System umożliwia usunięcie projektu wraz z powiązanymi danymi. | MVP |
| <a id="fr-014"></a>FR-014 | System zapisuje wymagania, przypadki użycia, scenariusze i diagramy w ramach odpowiedniego projektu. | MVP |

## C. Nawigacja i zarządzanie etapami pracy

| ID | Wymaganie | Priorytet |
| --- | --- | --- |
| <a id="fr-015"></a>FR-015 | System prezentuje etapy opracowywania specyfikacji w menu bocznym. | MVP |
| <a id="fr-016"></a>FR-016 | System wyświetla aktualny stan realizacji poszczególnych etapów. | MVP |
| <a id="fr-017"></a>FR-017 | System umożliwia użytkownikowi ręczne oznaczenie etapu jako ukończonego. | MVP |
| <a id="fr-018"></a>FR-018 | System udostępnia kolejne etapy po ukończeniu wymaganych etapów poprzedzających. | MVP |
| <a id="fr-019"></a>FR-019 | System umożliwia powrót do wcześniej ukończonych etapów. | MVP |
| <a id="fr-020"></a>FR-020 | System zapisuje postęp realizacji etapów projektu. | MVP |
| <a id="fr-021"></a>FR-021 | System informuje użytkownika o zmianach, które mogą wpływać na wcześniej opracowane elementy specyfikacji. | Rozszerzenie |

## D. Zarządzanie wymaganiami funkcjonalnymi i niefunkcjonalnymi

| ID | Wymaganie | Priorytet |
| --- | --- | --- |
| <a id="fr-022"></a>FR-022 | System umożliwia ręczne dodawanie wymagań funkcjonalnych. | MVP |
| <a id="fr-023"></a>FR-023 | System umożliwia ręczne dodawanie wymagań niefunkcjonalnych. | MVP |
| <a id="fr-024"></a>FR-024 | System umożliwia wprowadzenie opisu systemu w języku naturalnym. | MVP |
| <a id="fr-025"></a>FR-025 | System umożliwia generowanie wymagań na podstawie opisu systemu przy użyciu modelu LLM. | MVP |
| <a id="fr-026"></a>FR-026 | System uwzględnia istniejące wymagania podczas generowania nowych propozycji. | MVP |
| <a id="fr-027"></a>FR-027 | System identyfikuje potencjalne braki informacyjne w opisie systemu. | MVP |
| <a id="fr-028"></a>FR-028 | System generuje pytania doprecyzowujące dotyczące brakujących informacji. | MVP |
| <a id="fr-029"></a>FR-029 | System umożliwia udzielanie odpowiedzi na pytania doprecyzowujące. | MVP |
| <a id="fr-030"></a>FR-030 | System uwzględnia udzielone odpowiedzi podczas generowania wymagań. | MVP |
| <a id="fr-031"></a>FR-031 | System prezentuje propozycje wymagań przed ich zapisaniem. | MVP |
| <a id="fr-032"></a>FR-032 | System umożliwia akceptowanie lub odrzucanie poszczególnych propozycji wymagań. | MVP |
| <a id="fr-033"></a>FR-033 | System nadaje wymaganiom unikalne identyfikatory w ramach projektu. | MVP |
| <a id="fr-034"></a>FR-034 | System prezentuje wymagania w postaci uporządkowanej listy. | MVP |
| <a id="fr-035"></a>FR-035 | System umożliwia oddzielne przeglądanie wymagań funkcjonalnych i niefunkcjonalnych. | MVP |
| <a id="fr-036"></a>FR-036 | System umożliwia edycję istniejących wymagań. | MVP |
| <a id="fr-037"></a>FR-037 | System umożliwia usunięcie wybranego wymagania. | MVP |
| <a id="fr-038"></a>FR-038 | System zapisuje zmiany wymagań w bazie danych. | MVP |
| <a id="fr-039"></a>FR-039 | System umożliwia ponowne wygenerowanie wybranego wymagania. | Rozszerzenie |
| <a id="fr-040"></a>FR-040 | System umożliwia definiowanie kryteriów akceptacji wymagań. | Rozszerzenie |
| <a id="fr-041"></a>FR-041 | System umożliwia określenie priorytetu wymagania. | Rozszerzenie |

## E. Generowanie i zarządzanie przypadkami użycia

| ID | Wymaganie | Priorytet |
| --- | --- | --- |
| <a id="fr-042"></a>FR-042 | System umożliwia ręczne tworzenie przypadków użycia. | MVP |
| <a id="fr-043"></a>FR-043 | System umożliwia generowanie przypadków użycia na podstawie istniejących wymagań. | MVP |
| <a id="fr-044"></a>FR-044 | System umożliwia wprowadzenie dodatkowego opisu podczas generowania przypadków użycia. | MVP |
| <a id="fr-045"></a>FR-045 | System umożliwia generowanie przypadków użycia bez dodatkowego opisu. | MVP |
| <a id="fr-046"></a>FR-046 | System generuje pytania doprecyzowujące dotyczące niepełnych informacji o przypadkach użycia. | MVP |
| <a id="fr-047"></a>FR-047 | System uwzględnia odpowiedzi użytkownika podczas generowania przypadków użycia. | MVP |
| <a id="fr-048"></a>FR-048 | System umożliwia przeglądanie wygenerowanych propozycji przed ich zapisaniem. | MVP |
| <a id="fr-049"></a>FR-049 | System umożliwia akceptowanie lub odrzucanie propozycji przypadków użycia. | MVP |
| <a id="fr-050"></a>FR-050 | System nadaje przypadkom użycia unikalne identyfikatory. | MVP |
| <a id="fr-051"></a>FR-051 | System przechowuje nazwę, opis, aktorów i wersję przypadku użycia. | MVP |
| <a id="fr-052"></a>FR-052 | System umożliwia określenie warunków wstępnych i końcowych przypadku użycia. | MVP |
| <a id="fr-053"></a>FR-053 | System prezentuje listę przypadków użycia w ramach projektu. | MVP |
| <a id="fr-054"></a>FR-054 | System umożliwia edycję przypadku użycia. | MVP |
| <a id="fr-055"></a>FR-055 | System umożliwia usunięcie przypadku użycia. | MVP |
| <a id="fr-056"></a>FR-056 | System umożliwia powiązanie przypadku użycia z jednym lub wieloma wymaganiami. | MVP |
| <a id="fr-057"></a>FR-057 | System umożliwia oznaczenie przypadku użycia jako gotowego. | MVP |
| <a id="fr-058"></a>FR-058 | System umożliwia ponowne wygenerowanie wybranego przypadku użycia. | Rozszerzenie |

## F. Generowanie i zarządzanie scenariuszami

| ID | Wymaganie | Priorytet |
| --- | --- | --- |
| <a id="fr-059"></a>FR-059 | System umożliwia tworzenie scenariuszy w ramach wybranego przypadku użycia. | MVP |
| <a id="fr-060"></a>FR-060 | System umożliwia ręczne tworzenie scenariuszy. | MVP |
| <a id="fr-061"></a>FR-061 | System umożliwia generowanie scenariuszy za pomocą modelu LLM. | MVP |
| <a id="fr-062"></a>FR-062 | System uwzględnia dane przypadku użycia i powiązane wymagania podczas generowania scenariuszy. | MVP |
| <a id="fr-063"></a>FR-063 | System umożliwia podanie dodatkowego opisu podczas generowania scenariusza. | MVP |
| <a id="fr-064"></a>FR-064 | System umożliwia generowanie scenariusza głównego. | MVP |
| <a id="fr-065"></a>FR-065 | System umożliwia generowanie scenariuszy alternatywnych. | MVP |
| <a id="fr-066"></a>FR-066 | System umożliwia generowanie scenariuszy wyjątkowych. | MVP |
| <a id="fr-067"></a>FR-067 | System umożliwia definiowanie warunków uruchomienia scenariusza. | MVP |
| <a id="fr-068"></a>FR-068 | System prezentuje scenariusze w postaci uporządkowanych kroków. | MVP |
| <a id="fr-069"></a>FR-069 | System umożliwia dodawanie, edycję i usuwanie kroków scenariusza. | MVP |
| <a id="fr-070"></a>FR-070 | System umożliwia zmianę kolejności kroków scenariusza. | MVP |
| <a id="fr-071"></a>FR-071 | System umożliwia przeglądanie scenariuszy powiązanych z przypadkiem użycia. | MVP |
| <a id="fr-072"></a>FR-072 | System umożliwia edycję i usunięcie scenariusza. | MVP |
| <a id="fr-073"></a>FR-073 | System umożliwia ponowne wygenerowanie wybranego scenariusza. | MVP |
| <a id="fr-074"></a>FR-074 | System umożliwia oznaczenie scenariusza jako gotowego. | MVP |
| <a id="fr-075"></a>FR-075 | System umożliwia generowanie scenariuszy w formacie RSL-bis. | Rozszerzenie |
| <a id="fr-076"></a>FR-076 | System umożliwia sprawdzenie poprawności składniowej wygenerowanej specyfikacji RSL-bis. | Rozszerzenie |

## G. Generowanie i wizualizacja diagramów UML

| ID | Wymaganie | Priorytet |
| --- | --- | --- |
| <a id="fr-077"></a>FR-077 | System umożliwia generowanie diagramu przypadków użycia na podstawie aktorów i przypadków użycia. | MVP |
| <a id="fr-078"></a>FR-078 | System umożliwia wyświetlenie wygenerowanego diagramu przypadków użycia. | MVP |
| <a id="fr-079"></a>FR-079 | System umożliwia generowanie diagramu sekwencji na podstawie wybranego scenariusza. | MVP |
| <a id="fr-080"></a>FR-080 | System umożliwia wyświetlenie wygenerowanego diagramu sekwencji. | MVP |
| <a id="fr-081"></a>FR-081 | System umożliwia eksport diagramów do formatu PlantUML. | MVP |
| <a id="fr-082"></a>FR-082 | System umożliwia eksport diagramów do formatu graficznego. | MVP |
| <a id="fr-083"></a>FR-083 | System umożliwia ponowne wygenerowanie diagramu na podstawie aktualnych danych. | MVP |
| <a id="fr-084"></a>FR-084 | System umożliwia generowanie diagramów aktywności. | Rozszerzenie |
| <a id="fr-085"></a>FR-085 | System umożliwia generowanie diagramów komponentów. | Rozszerzenie |
| <a id="fr-086"></a>FR-086 | System umożliwia generowanie diagramów klas. | Rozszerzenie |
| <a id="fr-087"></a>FR-087 | System umożliwia edycję kodu źródłowego diagramu PlantUML. | Rozszerzenie |

## H. Eksport i dokumentacja

| ID | Wymaganie | Priorytet |
| --- | --- | --- |
| <a id="fr-104"></a>FR-104 | System umożliwia eksport danych projektu do formatu JSON. | MVP |
| <a id="fr-105"></a>FR-105 | System umożliwia eksport wygenerowanych diagramów UML. | MVP |
| <a id="fr-106"></a>FR-106 | System umożliwia eksport scenariuszy w formacie RSL-bis. | Rozszerzenie |
| <a id="fr-107"></a>FR-107 | System umożliwia wygenerowanie dokumentu specyfikacji wymagań SRS. | Rozszerzenie |
| <a id="fr-108"></a>FR-108 | System umożliwia eksport dokumentacji do formatu PDF. | Rozszerzenie |
| <a id="fr-109"></a>FR-109 | System umożliwia eksport dokumentacji do formatu DOCX. | Rozszerzenie |
| <a id="fr-110"></a>FR-110 | System umożliwia import wcześniej zapisanej specyfikacji. | Rozszerzenie |
