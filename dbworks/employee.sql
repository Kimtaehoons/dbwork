-- 자료 삭제 : DELETE FROM 테이블이름 WHERE 칼럼명=칼럼값 --
DELETE FROM employee WHERE emp_id = 'e1002'

-- 자료 검색 : SELECT 칼럼이름 FROM 테이블명 --
SELECT * FROM employee
-- 특정 칼럼 검색 --
SELECT name, salary FROM employee WHERE emp_id = 'e1001'
-- 조건이 있는 검색 : SELECT 칼럼이름 FROM 테이블명 WHERE 칼럼명=칼럼값 --
SELECT * FROM employee WHERE emp_id = 'e1002'

-- employee(직원) 테이블 생성 --
CREATE TABLE employee(
	emp_id char(5)PRIMARY KEY, -- 중복값 입력 방지 --
	name TEXT NOT NULL,
	age INTEGER, 
	salary INTEGER
)

-- 자료 추가 : INSERT INTO 테이블이름(칼럼명) VALUES 칼럼값 --
INSERT INTO employee VALUES('e1001', '김하나', 21, 10000)
-- NULL이 있는 경우 추가 : 칼럼명을 명시 --
INSERT INTO employee(emp_id, name, age) VALUES('e1002', '손흥민', 21)
-- 자료 수정 : UPDATE 테이블이름 SET 칼럼명=칼럼값 WHERE 기본키칼럼명=칼럼값 --
UPDATE employee SET name = '김하늘' WHERE emp_id = 'e1001'

COMMIT -- 실행 완료(자료가 추가되거나 하면 COMMIT을 입력해줘야 함 또는 상단 변경사항 저장하기 눌러줘야 함 --

