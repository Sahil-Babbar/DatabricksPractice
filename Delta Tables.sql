-- Databricks notebook source
CREATE TABLE employees(id INT, name STRING, salary DOUBLE);

-- COMMAND ----------

INSERT INTO employees VALUES
(101,"sahil",12000.00),
(102,"ravi",13000.00),
(103,"rishi",10000.00);

-- COMMAND ----------

SELECT * from employees;

-- COMMAND ----------

DESCRIBE DETAIL employees;

-- COMMAND ----------

-- MAGIC %fs ls dbfs:/user/hive/warehouse/employees

-- COMMAND ----------

DESCRIBE HISTORY employees;

-- COMMAND ----------

update employees set name="sahilbabbar" where id =101;

-- COMMAND ----------

DESCRIBE HISTORY employees;

-- COMMAND ----------

SELECT * from employees@v1

-- COMMAND ----------

DELETE from employees;

-- COMMAND ----------

select * from employees

-- COMMAND ----------

RESTORE TABLE employees TO VERSION AS OF 2

-- COMMAND ----------

SELECT * from employees;

-- COMMAND ----------

DESCRIBE HISTORY employees;

-- COMMAND ----------

 DESCRIBE DETAIL employees;

-- COMMAND ----------

OPTIMIZE employees
ZORDER BY (id)

-- COMMAND ----------

DESCRIBE DETAIL employees

-- COMMAND ----------

create table external_table(id int, name string, salary double) location 'dbfs:/mnt/demo/external_default'

-- COMMAND ----------

DESCRIBE EXTENDED external_table;

-- COMMAND ----------

DESCRIBE EXTENDED employees;

-- COMMAND ----------

DROP table external_table;
