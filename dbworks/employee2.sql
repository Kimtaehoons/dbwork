-- SQL언어 --
-- DDL(정의어) - CREATE, ALTER, DROP
-- DML(조작어) - INSERT, SELECT, UPDATE, DELETE
-- DCL(제어어) - COMMIT, ROLLBACK
-- 실행 단축기(Ctrl + Enter)

-- 자료 조회 -- 
SELECT * FROM employee;
SELECT name, salary FROM employee;
-- 급여가 20000달러 이상인 사원의 정보 --
SELECT * FROM employee WHERE salary >= 20000;
-- 자료 추가 --
INSERT INTO employee (emp_id, name, age, salary) VALUES ('e1003', '안산', 20, 20000);
INSERT INTO employee (emp_id, name, salary) VALUES ('e1004', '박인비', 20000);
-- 자료 수정 --
UPDATE employee SET salary = 30000 WHERE name = "김하늘";
UPDATE employee SET age = 33 WHERE name = "박인비"
-- 오름차순/내림차순 정렬 --
SELECT * FROM employee ORDER by salary;
SELECT * FROM employee ORDER by salary DESC;
COMMIT;
-- 자료 삭제 --
DELETE FROM employee WHERE emp_id = "e1001";
ROLLBACK;
INSERT INTO employee (emp_id, name, salary) VALUES ('e1005', '김연경', 50000);
COMMIT;
DROP TABLE employee WHERE emp_id = "e1001";
ROLLBACK;
DELETE FROM employee WHERE emp_id = "e1005";
