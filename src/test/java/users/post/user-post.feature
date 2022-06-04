Feature: Post user on reqres

  Background:
    * url "https://reqres.in"
    * path  "/api/users"
   # * request  { "name": "Daniel", "job": "QA Enginner" }


  Scenario: Pos  a new  user into reqres
    * def var = { "name": "Daniel", "job": "QA Enginner" }
    And request var
    When method post
    Then status 201


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

