Feature: Templates page

As a Coordinator
I want to view the created templates
So that I can edit and/or delete a template that I created

Scenario: View created templates
    Given I am logged in 
    And I am on the Camaar home page
    When I click 'Templates' on menu
    Then I should be on Templates page 
    When I follow "Adicionar Template"
    Then I should be on the Templates page
    When I fill in 'Avalie CIC0190'
    And I fill in 'Avalie MAT0023'
    And I fill in 'Avalie ENE0042'
    And I press "enviar"
    Then I should be on the Templates page 
    And I should see 'newest template'

Scenario: Edit or delete a Template
    Given I am logged in 
    And I am on the Camaar home page 
    When I click 'Templates' on menu
    Then I should be on Templates page
    When I see "Newest Template"
    And I click "delete"
    Then I should not see "Newest Template" on Templates page
    When I see "Older Template"
    And I click "edit"
    Then I should be on Edit Page
    When I see "Avalie CIC0190"
    And I click "edit"
    And I fill in "Avalie MAT0053"
    Then I should see "Avalie MAT0053"
    When I see "Older Template"
    And I click "edit"
    And I fill in "New Template"
    And I press "enviar"
    Then I should be on Templates page 
    And I should see "New Template"

