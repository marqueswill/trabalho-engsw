Feature: Forms to answer page

    As a Student
    I want to view the unanswered forms for the classes I am enrolled in
    So that I can choose which one to respond to

    Background: forms have been assigned to classes
        Given the following forms exist:
            | questions | role    | open | class | template |
            | {}        | Student | True | 1     | 1        |
    Scenario: Student tries to fill and submit a form