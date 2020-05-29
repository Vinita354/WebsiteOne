@vcr
@javascript
Feature: Display Public Activity
  As a user
  In order to get a better overview of what is going on
  I would like to see latest activities in projects that I participate in presented as a activity feed

  As a site visitor
  In order to get a clearer picture of what is going on in all AgileVenture projects
  I would like to see an activity feed

  Background:
    Given the following projects exist:
      | title        | description           | status |
      | Hello Galaxy | Greetings earthlings! | active |

    Given the following articles exist:
      | Title           | Content                | Tag List    |
      | Ruby is on Fire | Fire is fire and sunny | Ruby, Rails |

    Given I have logged in
    And I edit article "Ruby is on Fire"

  Scenario: Navigate to activity feed
    Given I am on the "Dashboard" page
    And I click the "Activity feed" link
    Then I should see a "activity-feed" tab set to active
    And I should see a activity feed

  Scenario: Render activity
    Given Given I am on the Activity feed
    Then I should see "Anders Persson edited the article: Ruby is on Fire."
