select * from book_master;
select * from student_master;

select subject2,student_year 
from student_marks inner join student_master 
on student_marks.student_code=student_master.student_code;

select subject1,student_year
from student_marks inner join student_master
on student_marks.student_code=student_master.student_code;

select subject3,student_year
from student_marks inner join student_master
on student_marks.student_code=student_master.student_code;

select student_name,student_code
from student_master inner join Department_Master
on student_master.dept_code=department_master.dept_code;

select book_name,bokk_pub_year,book_pub_author
from Book_Master inner join Book_transactions
on Book_Master.Book_code=Book_transactions.Book_code;

select staff_name,mgr_code
from staff_Master inner join Department_Master
on staff_Master.dept_code=Department_Master.dept_code;

select staff_name,mgr_code
from staff_Master right join Department_Master
on staff_Master.dept_code=Department_Master.dept_code;

select book_name,bokk_pub_year,book_pub_author
from Book_Master right join Book_transactions
on Book_Master.Book_code=Book_transactions.Book_code;

/*select subject2,student_year 
from student_marks left join student_master 
on student_marks.student_code=student_master.student_code;

select student_name,Student_Address
from Student_Master right join Department_Master
on Student_Master.dept_code=Department_Master.dept_code;*/

select staff_name,mgr_code
from staff_Master left join Department_Master
on staff_Master.dept_code=Department_Master.dept_code;

select design_name,staff_code,Staff_Address
from Designation_Master right join staff_Master
on Designation_Master.design_code=staff_Master.design_code;


select book_name,bokk_pub_year
from Book_Master left join Book_transactions
on Book_Master.Book_code=Book_transactions.Book_code;

select ename,staff_sal 
from emp left join staff_master
on emp.hiredate=staff_master.hiredate;

select staff_name,staff_code
from staff_master full outer join designation_master
on staff_master.design_code=designation_master.design_code;

select staff_name,staff_master.design_code
from staff_master full outer join designation_master
on staff_master.design_code=designation_master.design_code;

select Staff_Name,staff_Master.Dept_Code
from staff_Master full outer join Department_Master
on staff_Master.Dept_Code=Department_Master.Dept_Code;

select student_code,staff_code
from Book_transactions full outer join book_master
on Book_transactions.book_code=book_master.book_code;

-------------right outer join-------
select staff_name,staff_code,staff_sal,staff_address
from staff_master,designation_master
where staff_master.design_code(+)=designation_master.design_code;

---------cross join--

select empno,ename
from emp
cross join Department_Master;

select student_name,dept_code
from student_master
cross join Student_Marks;

select dept_code,dept_name 
from Department_Master
cross join Designation_Master;

---------self join-----
select staff_name,staff_master.design_code
from staff_master,designation_master
where staff_master.design_code=designation_master.design_code;

select staff_name,staff_master.Dept_Code
from staff_master,Department_Master
where staff_master.Dept_Code=Department_Master.Dept_Code;

select Student_Code,Student_Master.Dept_Code
from Student_Master,Department_Master
where student_master.dept_code=Department_Master.dept_code;

-----------natural join-------
select staff_name,design_name
from staff_master,designation_master;

select ename,design_name
from emp,Designation_Master;

select empno,design_code
from emp,Designation_Master;






