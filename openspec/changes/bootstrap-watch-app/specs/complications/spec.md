## ADDED Requirements

### Requirement: WidgetKit complication extension
The system SHALL provide WidgetKit complications for watchOS 10.0 or later and SHALL NOT use ClockKit.

#### Scenario: Extension target exists
- **WHEN** the project is opened in Xcode
- **THEN** a WidgetKit app extension target named `LionAndSunComplications` is available

### Requirement: Accessory family coverage
The complication extension SHALL support `accessoryCircular`, `accessoryRectangular`, `accessoryInline`, and `accessoryCorner`.

#### Scenario: User configures a watch face
- **WHEN** the user selects Lion and Sun from available complications
- **THEN** modern watchOS accessory complication families are offered where the active watch face supports them

### Requirement: Emblem complication rendering
The complication extension SHALL show the Lion and Sun emblem in every supported complication family.

#### Scenario: Small complication renders
- **WHEN** an accessory circular or accessory corner complication is displayed
- **THEN** the emblem is visible without required text

### Requirement: Phrase in roomy complications
The complication extension SHALL show `Javid Shah!` when the complication family has room for text.

#### Scenario: Rectangular complication renders
- **WHEN** an accessory rectangular complication is displayed
- **THEN** the emblem and `Javid Shah!` are both visible

#### Scenario: Inline complication renders
- **WHEN** an accessory inline complication is displayed
- **THEN** the complication exposes `Javid Shah!` and includes the emblem where the system renders the image

### Requirement: Static timeline
The complication extension SHALL use static timeline content because the emblem and phrase do not change.

#### Scenario: WidgetKit requests timeline entries
- **WHEN** WidgetKit asks for complication content
- **THEN** the provider returns the current emblem and phrase without requiring network or stored user data
