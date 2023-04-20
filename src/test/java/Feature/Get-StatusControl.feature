Feature: GetStatusControl
  Background:
    * url 'https://petstore.swagger.io'
    * header content-type = 'application/json'

    @NotGet-PetId
    Scenario: Not Get PetId
      And path '/v2/pet/1'
      When method GET
      * status 404
      * assert response.type=='error'


