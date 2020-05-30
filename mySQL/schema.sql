DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;


CREATE TABLE departments
(
    id INT
    AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR
    (30) NOT NULL
);


    CREATE TABLE employeeRole
    (
        id INT
        AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR
        (30) NOT NULL,
    salary DECIMAL
        (10,2) NOT NULL,
    dept_ID INT NOT NULL,
    -- FOREIGN KEY department_ID
    --     REFERENCES departments
    --     (id)
        ON
        DELETE CASCADE
);


        CREATE TABLE totalEmployees
        (
            id INT
            AUTO_INCREMENT PRIMARY KEY
    first_name VARCHAR
            (30) NOT NULL,
    last_name VARCHAR
            (30) NOT NULL,
    role_ID INT, 
    -- FOREIGN KEY role_ID
    --     REFERENCES employeeRole
    --         (id)
        ON
            DELETE CASCADE
    manager_ID INT,
    -- FOREIGN KEY manager_ID
    --         REFERENCES totalEmployees
    --         (id)
        ON
            DELETE CASCADE
);