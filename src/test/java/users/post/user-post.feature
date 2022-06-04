Feature: Post user on reqres

  Background:
    * url "https://reqres.in"
    * path  "/api/users"
    * request  { "name": "#(name)", "job": "#(job)" }


  Scenario Outline: Pos  a new  user into reqres

    When method post
    Then status 201

    Examples:

      | name   | job        |
      | Daniel | Trabajador |
      | David  | Jefe       |
      | Andres | Gerente    |


  Scenario: Pos  a new  user into reqres
    Given  url "https://reqres.in" + "/api/users"
    And request { "name": "Daniel", "job": "QA Enginner" }
    When method post
    Then status 201


  Scenario: Pos  a new  user into reqres
    Given  url "https://reqres.in" + "/api/users"
    And request { "name": "Daniel", "job": "QA Enginner" }
    When method post
    Then status 201

