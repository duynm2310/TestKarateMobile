Feature: android test

  Background: App Preset


  Scenario: android mobile app UI tests
    Given driver { webDriverSession: { desiredCapabilities : "#(android.desiredConfig)"} }
