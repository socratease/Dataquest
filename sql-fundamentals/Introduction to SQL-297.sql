## 2. Previewing A Table Using SELECT ##

select * from recent_grads
limit 10

## 3. Filtering Rows Using WHERE ##

select Major, ShareWomen from recent_grads
where ShareWomen < 0.5


## 4. Expressing Multiple Filter Criteria Using AND ##

select Major, Major_category, Median, ShareWomen
from recent_grads
where ShareWomen > 0.5 and Median > 50000

## 5. Returning One of Several Conditions With OR ##

select Major, Median, Unemployed
from recent_grads
where Median >= 10000 or Unemployed <= 1000
limit 20

## 6. Grouping Operators With Parentheses ##

select Major, Major_category, ShareWomen, Unemployment_rate
from recent_grads
where Major_category = 'Engineering' and (ShareWomen > 0.5 or Unemployment_rate < 0.051)

## 7. Ordering Results Using ORDER BY ##

SELECT Major, ShareWomen, Unemployment_rate FROM recent_grads
WHERE ShareWomen > 0.3 AND Unemployment_rate < .1
ORDER BY ShareWomen DESC

## 8. Practice Writing A Query ##

SELECT Major_category, Major, Unemployment_rate FROM recent_grads WHERE Major_category='Engineering' OR Major_category='Physical Sciences' ORDER BY Unemployment_rate ASC