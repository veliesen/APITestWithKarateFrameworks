Feature: Delete Username
  Background:
    * url 'https://petstore.swagger.io'
    * header content-type = 'application/json'

  @DeleteUser
  Scenario: DeleteUser

    And path '/v2/user/veliesen'
    When method DELETE
    * status 200
    * print response