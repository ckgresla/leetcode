-- Question Link- https://leetcode.com/problems/capital-gainloss/




-- Base Solution, not overly slow 
SELECT stock_name, SUM(
    CASE 
        WHEN operation = "Buy" THEN -price
        WHEN operation = "Sell" THEN price
    END 
)
AS capital_gain_loss
FROM Stocks 
GROUP BY stock_name
