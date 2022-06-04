Feature: delete user on reqres

  Scenario: Delete a user
    * call read("../post/user_post_snippet.feature@CreateUser")
    Given  url "https://reqres.in" + "/api/users/" + IdUser
    When method delete
    Then status 204