Feature: POST method

  Scenario: Post Test 1
  * url 'https://reqres.in/api/users'
  And request {"name":"Ensar","job Title": "Senior SDET"}
  When method POST
  Then status 201
  And print response

  Scenario: Post method Test 2
  Given url 'https://reqres.in/api/users'
  And request
    """
    {
    "name":"Emre",
    "job Title": "Senior Team Lead",
    "age":39
    }
    """
  When method POST
  Then status 201
  And match response =={"name":"Emre","job Title":"Senior Team Lead","age":39,"id":"#string","createdAt": "#ignore"}
