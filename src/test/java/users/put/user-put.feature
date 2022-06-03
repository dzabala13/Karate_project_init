Feature: put user on reqres

  Scenario: Put a user
    Given  url "https://reqres.in" + "/api/users/" + "2"
    And request {     "name": "DanielMaster",     "job": "WebCam" }
    When method put
    Then status 200
    And match $.name == 'DanielMaster'