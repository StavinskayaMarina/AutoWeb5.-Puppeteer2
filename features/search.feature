Feature: Buying tickets

Scenario: successful purchase of 1 ticket to the film Zootopia (1 ticket)
 Given user selects a movie for tomorrow "1" Zootopia
 When user selects one ticket and indicates the row "1" and place "3"
 Then booking confirmation page opens "Вы выбрали билеты:", "1/3"

Scenario: successful purchase of 2 ticket to the film GoneWithWind (2 ticket)
 Given user selects a movie for tomorrow "2" GoneWithWind
 When user selects two ticket and indicates the row "2","2" and places "3","4"
 Then booking confirmation page opens "Вы выбрали билеты:", "2/3, 2/4"

Scenario: trying to buy a ticket for a occupied seat
 Given user selects a movie for tomorrow "2" GoneWithWind
 When user selects one ticket and indicates the row "2" and place "8"
 When user buys a ticket and receives a QR code
 When re-enters the application page
 Given user selects a movie for tomorrow "2" GoneWithWind
 When user selects one ticket and indicates the row "2" and place "8"
 Then it is impossible to buy tickets, the seats are already taken