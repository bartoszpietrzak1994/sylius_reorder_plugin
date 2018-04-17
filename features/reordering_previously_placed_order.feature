Feature: Reordering previously placed order
    In order to be able to place the same order as I did earlier
    As a Customer
    I want to have Reorder button on order history screen next to every order that I placed before

    Background:
        Given the store operates on a single channel in "United States"
        And the store has a product "Angel T-Shirt" priced at "$39.00"
        And the store ships everywhere for free
        And the store allows paying with "Cash on Delivery"
        And I am a logged in customer
        And I placed an order "#00000666"
        And I bought a single "Angel T-Shirt"
        And I addressed it to "Lucifer Morningstar", "Seaside Fwy", "90802" "Los Angeles" in the "United States"
        And for the billing address of "Mazikeen Lilim" in the "Pacific Coast Hwy", "90806" "Los Angeles", "United States"
        And I chose "Free" shipping method with "Cash on Delivery" payment

    Scenario: Reorder button is visible next to order
        When I browse my orders
        Then I should see reorder button next to the order