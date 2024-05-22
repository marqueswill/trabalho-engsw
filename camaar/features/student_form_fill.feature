Feature: Fill an evaluation form as a student
  As a student
  So that I can provide feedback on my experience with the class
  I want to be able to fill out a form assigned to me

  Background: a form is assigned to my class
    Given I am on the Camaar avaliacoes page
    And I see the forms:
      | Disciplina | Semestre | Professor | Status   |
      | Tests101   |   1900.1 | Jhon Smit | Pendentev |

  Scenario: Student fills the form with various answers
    Given I open the form for "Tests101" in semester "1900.1" by "Jhon Smith"
    And I select "A" for question number 1
    And I select "B" for question number 2
    And I select "C" for question number 3
    And I select "D" for question number 4
    And I select "E" for question number 5
    And I fill "Lorem ipsum" for question number 6
    When I press on "Enviar"
    Then I should see a confirmation popup stating "Enviar respostas?"
    When I press on "Sim"
    Then I should see "Respostas enviadas com sucesso!"

  Scenario: Student doesn't fill all the form
    Given I open the form for "Tests101" in semester "1900.1" by "Jhon Smith"
    And I select "A" for question number 1
    And I fill "Lorem ipsum" for question number 6
    When I press on "Enviar"
    Then I should see an error message saying "Responda todos os campos!"
