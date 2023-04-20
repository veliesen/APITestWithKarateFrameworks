Feature:Post-CreateUser
  Background:
    * url 'https://petstore.swagger.io'
    * header content-type = 'application/json'
    * def jsonPath = '../Json/'


  @CreateaUser-Post
  Scenario: Create User
    * def jsonBody = read(jsonPath+'UserInfo.json')
    * jsonBody.username='veliesen'
    * jsonBody.firstName='veli'
    * jsonBody.lastName='esen'
    * jsonBody.email='vesen@gmail.com'
    * jsonBody.password='test12'
    * jsonBody.phone='506608'
    * jsonBody.userStatus='1'
    And path '/v2/user'
    * request jsonBody
    When method POST
    * status 200
    * print response

