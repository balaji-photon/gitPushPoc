Feature: User login

  Scenario: Successful login with valid credentials
    Given I navigate to the login page
    When I enter "john.doe@example.com" in the email field
    And I enter "password123" in the password field
    And I click on the "Login" button
    Then I should be redirected to the dashboard
    And I should see the message "Welcome, John Doe!"

  Scenario: Login fails with incorrect password
    Given I navigate to the login page
    When I enter "john.doe@example.com" in the email field
    And I enter "wrongpassword" in the password field
    And I click on the "Login" button
    Then I should see an error message "Invalid email or password"
    
  Scenario: Login attempt with empty email and password fields
    Given I navigate to the login page
    When I leave the email field empty
    And I leave the password field empty
    And I click on the "Login" button
    Then I should see an error message "Email and password are required"

Scenario: Login fails with invalid email
    Given I navigate to the login page
    When I enter "invalidemail" in the email field
    And I enter "password123" in the password field
    And I click on the "Login" button
    Then I should see an error message "Invalid email or password"