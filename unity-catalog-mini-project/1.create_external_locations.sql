-- Databricks notebook source
-- MAGIC %md
-- MAGIC ### Create the external locations required for the project
-- MAGIC 1. Bronze
-- MAGIC 2. Silver
-- MAGIC 3. Gold

-- COMMAND ----------

DROP EXTERNAL LOCATION IF EXISTS databrickscourseucextdl_bronze;
DROP EXTERNAL LOCATION IF EXISTS databrickscourseucextdl_silver;
DROP EXTERNAL LOCATION IF EXISTS databrickscourseucextdl_gold;

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databrickscourseucextdl_bronze
URL 'abfss://bronze@datbrickscourseucextdl.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `databrickscourse-ext-storage-credential` );

-- COMMAND ----------

DESC EXTERNAL LOCATION databrickscourseucextdl_bronze;


-- COMMAND ----------

-- MAGIC %fs
-- MAGIC ls "abfss://bronze@datbrickscourseucextdl.dfs.core.windows.net/"

-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databrickscourseucextdl_silver
URL 'abfss://silver@datbrickscourseucextdl.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `databrickscourse-ext-storage-credential` );


-- COMMAND ----------

CREATE EXTERNAL LOCATION IF NOT EXISTS databrickscourseucextdl_gold
URL 'abfss://gold@datbrickscourseucextdl.dfs.core.windows.net/'
WITH (STORAGE CREDENTIAL `databrickscourse-ext-storage-credential` );
