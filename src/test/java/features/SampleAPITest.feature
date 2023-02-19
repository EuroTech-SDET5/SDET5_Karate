Feature:

  Background:
  * url "https://reqres.in/api/"
  * header Accept = "application/json; charset=utf-8"

  Scenario: Test Sample Get API
  Given url 'https://reqres.in/api/users?page=2'
  When method GET
  Then status 200
  And match header Content-Type =="application/json; charset=utf-8"
  And print responseTime
  And print response

 Scenario: Request with Path and Param
   Given path '/users'
   And param page = 2
   When method GET
   Then status 200
   And print response