# SQL-test


Как решил: чтобы отсортировать и убрать повторения пришлось дубировать таблицу отпусков, добавление каждого
сотрудника происходдит за счет добавления в код нового join 

ВНИМАНИЕ: Для того чтобы не дублировать код, в случаях когда более одного сотрудников нужно писать 
цикл, либо выводить в человекачитабельной форме, данный редактор не дает мне написать цикл пробовал 
несколько раз, также у себя в базе тестировал, у меня нормально отрабатывает, так что, думаю проблема в
редакторе, так что сделал как-то так

## task.sql - задание
## main.sql - решение задания

# Вариант без использования циклов и костылей:

```
select Code,DateBegin,DateEnd
from Employee as emp
  left join Vacation as vac on emp.ID = vac.ID_Employee
where vac.DateEnd BETWEEN N'2020-01-01' AND N'2020-12-31'
```

