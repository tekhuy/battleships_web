Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game

  Scenario: Registering
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
    Then I enter "Huy"
    Then I shall be redirected to "/start"
    Then I shall see "Please place your ship"

  Scenario: Registering without a name
    Given I am on the homepage
    When I follow "New Game"
    Then I should see "What's your name?"
    When I click submit without entering a name
    Then I shall be redirected to "/try_again"
    When I click submit
    Then I shall be redirected to "/new"

  Scenario: Start a game
    Given I am on the Start page
    Then I shall see "Please place your ship"
    Then I enter a ship on coordinate "A1"
    Then I shall see "You have successfully placed a ship"

  Scenario: To place a second ship in a legal place
    Given I am on the Start page
    Then I shall see "Please place your ship"
    Then I enter a ship on coordinate "A1"
    Then I shall see "You have successfully placed a ship"
    Then I shall see "Please place another ship"
    Then I enter a ship on coordinate "B2"
    Then I shall see "You have successfully placed a ship" 

    Scenario: To place a second ship in an illegal place
    Given I am on the Start page
    Then I shall see "Please place your ship"
    Then I enter a ship on coordinate "A1"
    Then I shall see "You have successfully placed a ship"
    Then I shall see "Please place another ship"
    Then I enter a ship on coordinate "A1"
    Then I shall see "Error"