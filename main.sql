select emp1.Code, vac1.DateBegin, vac1.DateEnd,emp2.Code, vac2.DateBegin, vac2.DateEnd

from Vacation AS vac1
 
 left join Employee AS emp1 on emp1.ID = vac1.ID_Employee
    
 join Vacation AS vac2 on vac1.DateBegin <= vac2.DateEnd
    and vac2.DateBegin <= vac1.DateEnd
    and vac1.ID_Employee < vac2.ID_Employee
 
 left join Employee AS emp2
    ON emp2.ID = vac2.ID_Employee

where vac1.DateEnd between N'2020-01-01' and N'2020-12-31'

  
 
