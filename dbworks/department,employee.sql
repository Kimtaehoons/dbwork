-- 자료 조회를 위한 백업 공간으로 사용(삭제)
--DELETE FROM department WHERE deptid = 20;
--INSERT INTO employee VALUES (301, '이산', 35, 20);
--INSERT INTO department VALUES (20, '마케팅', '인천');
--INSERT INTO employee VALUES (202, '김하나', 25, 10);
--INSERT INTO employee VALUES (202, '김하나', 25, 50);
--INSERT INTO employee VALUES (201, '김하나', 25, 10);

-- 관계 학습 --
-- 부서 테이블 --
CREATE TABLE department (
	deptid INTEGER,
	deptname TEXT NOT NULL,
	location TEXT NOT NULL,
	PRIMARY KEY(deptid)
);

CREATE TABLE employee(
	empid INTEGER PRIMARY KEY,
	name TEXT NOT NULL,
	age INTEGER,
	deptid INTEGER, -- 부모 것 넣어줌 --
	FOREIGN KEY (deptid) REFERENCES department(deptid) -- 넣어준 것에 대해 추적 --
);

-- 부서 추가 --
--INSERT INTO department VALUES (10, '전산팀', '서울');
INSERT INTO department VALUES (20, '마케팅', '인천');

-- 사원 추가 --
--INSERT INTO employee VALUES (201, '김하나', 25, 10); -- 부모 테이블과 관계가 맺어짐 --
--INSERT INTO employee VALUES (202, '김하나', 25, 50); -- 외래키 제약조건 위배, 부모 테이블과 연관된 deptid값이 없기 때문 --
--INSERT INTO employee VALUES (202, '김하나', 25, 10);
INSERT INTO employee VALUES (301, '이산', 35, 20);

-- 부서 삭제 --
--DELETE FROM department WHERE deptid = 20; -- 에러발생(FOREIGN KEY constraint failed) - 해당하는 마케팅 행에 해당하는 deptid를 employee테이블에 있기 떄문

SELECT * FROM employee;
SELECT * FROM department;