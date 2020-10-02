Feature: Cucumber Basket
    As a gardener,
    I want to carry cucumbers in a basket,
    So that I don't drop them all.
    Scenario Outline: Add cucumbers to a basket
        Given the basket has <so_1> cucumbers
        When <so_2> cucumbers are added to the basket
        Then the basket contains <so_tong> cucumbers
        Examples:
            | so_1 | so_2 | so_tong |
            | 1    | 2    | 3       |
            | 3    | 4    | 7       |
            | 10   | 10   | 20      |