Feature: Get Username
  Background:
    * url 'https://petstore.swagger.io'
    * header content-type = 'application/json'

  @GetUser
  Scenario: GetaUser

    And path '/v2/user/veliesen'
    When method GET
    * status 404
    * print response
