Feature: Hello Karate

  Scenario: How to print
    Given print "Hello Karate"
    When print 'Another print'
    Then print "Last print"

  Scenario: Keep going printing
    Given print "Some words to print"
    * print "My name is James"
    * print "My name","Karate Kid"
    * print 'My name is'+'Adam Smith'

Scenario: Some Json Object
  * def student =
  """
  {
  "FirstName":"Mike",
  "LastName":"Smith",
  "Salary":5000
  }
  """
  * print student
  * print student.FirstName
  * print student.LastName
  * print student.Salary
