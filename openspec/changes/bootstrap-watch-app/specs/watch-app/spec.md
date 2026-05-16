## ADDED Requirements

### Requirement: Standalone watchOS app
The system SHALL provide a standalone watchOS 10.0 or later app named `Lion and Sun`.

#### Scenario: App target exists
- **WHEN** the project is opened in Xcode
- **THEN** a watchOS app target named `LionAndSun` is available with deployment target 10.0 or later

### Requirement: Main emblem screen
The app SHALL show the Lion and Sun emblem and the text `Javid Shah!` on the first screen.

#### Scenario: User launches app
- **WHEN** the user opens the watch app
- **THEN** the first screen displays the emblem and the exact phrase `Javid Shah!`

### Requirement: Static local experience
The app SHALL operate without accounts, networking, backend services, or user data storage.

#### Scenario: App is launched offline
- **WHEN** the watch has no network connectivity
- **THEN** the app still displays the emblem and phrase
