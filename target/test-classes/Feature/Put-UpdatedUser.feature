Feature:Put-UpdatedUser
  Background:
    * url 'https://petstore.swagger.io'
    * header content-type = 'application/json'
    * def jsonPath = '../json/'


  @UpdatedUser-PUT
  Scenario: Update a UserInfos
    * def jsonBody = read(jsonPath+'UserInfo.json')
    * jsonBody.username='olgaesen'
    * jsonBody.firstName='olga'
    * jsonBody.lastName='esen'
    * jsonBody.email='oesen@gmail.com'
    * jsonBody.password='test123'
    * jsonBody.phone='50660898'
    * jsonBody.userStatus='1'
    And path '/v2/user/veliesen'
    * request jsonBody
    When method PUT
    * status 200
    * print response

  @GetUpdatedUserInfo
  Scenario: Get Updated UserInfo
    And path '/v2/user/olgaesen'
    When method GET
    * print response
