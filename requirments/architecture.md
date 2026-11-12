# Architektura czterowarstwowa — View i Presenter

## UC1–2: Zaloguj się / Zarejestruj konto

### 1. AuthenticationView
**Provides:** IAuthenticationView

```text
+showLoginForm()
+showRegistrationForm()
+showValidationErrors(errors)
+showAuthenticationError(message)
+showRegistrationError(message)
+showAuthenticationSuccess(user)
+showRegistrationSuccess()
+showLoading()
+hideLoading()

-loginOnClick()
-registerOnClick()
```

**Requires:** IAuthenticationPresenter

### 2. AuthenticationPresenter
**Provides:** IAuthenticationPresenter

```text
+login(email, password)
+register(email, password)

-handleLoginSuccess(response)
-handleRegistrationSuccess(response)
-handleValidationError(errors)
-handleAuthenticationError(message)
-handleRegistrationError(message)
-handleServerError(message)
-updateAuthenticationState(user)
```

**Requires:** IAuthenticationView, IAuthAPI

### 3. AuthController
**Provides:** IAuthAPI

```text
+login(LoginRequestDTO): LoginResponseDTO
+register(RegisterRequestDTO): RegisterResponseDTO

-validateLoginRequest(dto)
-validateRegisterRequest(dto)
-mapAuthenticationError(error)
-mapRegistrationError(error)
```

**Requires:** IAuthService

### 4. AuthService
**Provides:** IAuthService

```text
+authenticate(LoginRequestDTO): AuthResult
+register(RegisterRequestDTO): RegistrationResult

-verifyPassword(password, passwordHash)
-hashPassword(password)
-createUser(email, passwordHash)
-generateAccessToken(user)
```

**Requires:** IUserRepository

### 5. UserRepository
**Provides:** IUserRepository

```text
+findByEmail(email): User?
+existsByEmail(email): bool
+save(user): User
```

**Requires:** Database Connection

---

## DTO

```text
LoginRequestDTO
+email
+password

LoginResponseDTO
+accessToken
+user

RegisterRequestDTO
+email
+password

RegisterResponseDTO
+userId

ValidationErrorDTO
+errors

ErrorDTO
+code
+message
```

## Obsługa błędów

| HTTP | Sytuacja | Reakcja |
|---|---|---|
| 400 | Niepoprawne dane wejściowe | showValidationErrors() |
| 401 | Niepoprawny email lub hasło | showAuthenticationError() |
| 409 | Email jest już zajęty | showRegistrationError() |
| 500 | Wewnętrzny błąd serwera | showRegistrationError() / showAuthenticationError() |
| 503 | Usługa niedostępna | Komunikat o niedostępności |

Dodatkowo: błąd sieci lub timeout może wystąpić bez odpowiedzi HTTP i powinien zostać obsłużony przez Presenter.

## Wyniki operacji

```text
Login:
200 OK -> LoginResponseDTO
400 -> ValidationErrorDTO
401 -> ErrorDTO

Register:
201 Created -> RegisterResponseDTO
400 -> ValidationErrorDTO
409 -> ErrorDTO

Obie operacje:
500 / 503 -> ErrorDTO
Network error -> brak odpowiedzi HTTP
```

**Uwagi:**
- `+` public, `-` private.
- Metody prywatne nie należą do interfejsów.
- Błędy biznesowe mogą być zwracane jako typowane wyniki lub wyjątki, a Controller mapuje je na HTTP.
- Hasła przechowywane są wyłącznie jako bezpieczne hashe.
- Unikalność email musi być również wymuszona w bazie danych.
- DTO nie są osobnymi komponentami UML.








## 3. Utwórz projekt

**Komponent: CreateProjectView**

Provided interface: `ICreateProjectView`

```text
+showProjectForm()
+showError(message)
+showLoading()
+showSuccess(message)
```

Metoda prywatna:

```text
-createProjectOnClick()
```

---

## 4. Przeglądaj projekty

**Komponent: ProjectsListView**

Provided interface: `IProjectsListView`

```text
+showProjects(projects)
+showLoading()
+showError(message)
```

Metody prywatne:

```text
-createProjectOnClick()
-openProjectOnClick(projectId)
```

---

## 5. Zarządzaj postępem projektu

**Komponent: ProjectView**

Provided interface: `IProjectView`

```text
+showProjectDetails(project)
+showError(message)
```

Metody prywatne:

```text
-descriptionOnClick()
-requirementsOnClick()
```

**Komponent: ProjectsPresenter**

Provided interface: `IProjectsPresenter`

```text
+getProjectsList()
+createProject(projectData)
+getProjectDetails(projectId)
+getProjectProgress(projectId)
+updateProjectProgress(projectId, progress)
```

Ostatnia operacja jest potrzebna tylko wtedy, gdy użytkownik może ręcznie aktualizować postęp projektu.

---











## 6–8. Dodaj wymaganie ręcznie / Generuj wymagania z wykorzystaniem LLM / Przeglądaj wymagania

**Komponent: RequirementsView**

Provided interface: `IRequirementsView`

```text
+showRequirements(requirements)
+showRequirementForm()
+showGeneratedRequirements(requirements)
+showLoading()
+showError(message)
```

Metody prywatne:

```text
-addRequirementOnClick()
-generateRequirementsOnClick()
```

**Komponent: RequirementsPresenter**

Provided interface: `IRequirementsPresenter`

```text
+addRequirement(projectId, requirement)
+generateRequirements(projectId, description)
+getRequirements(projectId)
```

---

