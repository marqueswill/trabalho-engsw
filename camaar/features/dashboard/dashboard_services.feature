Feature: dashboard services
    As a coordinator
    So that I can easily manage my forms
    I want a functional dashboard with the services "Importar dados", "Editar Templates", "Enviar Formulários" and "Análise de resultados"

    Background: I am a authenticated coordinator
        Given A coordinator exists
        And I am on login page
        When I fill in matricula with <matricula aqui>
        And I fill in senha with <senha aqui>
        And I press login
        Then I should be on dashboard page
        And be logged as a coordinator

    Scenario: Coordinator tries to acess management dashboard
        Given I am on the dashboard/gerenciamento page
        Then I should see Importar dados
        And  I should see Editar templates
        And  I should see Enviar formulários
        And  I should see Análise de resultados
