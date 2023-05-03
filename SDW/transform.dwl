//I want to have an EmployeeID field within a single resource instead of having two different
%dw 2.0
output application/json  
---
//for adding employID to resource im using map function
payload map ((item) -> item - "Resource" ++ 
    {"Resource": item.Resource ++ "EmployeeID": item.EmployeeID })