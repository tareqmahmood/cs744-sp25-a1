from pyspark.sql import SparkSession
from pyspark.sql.functions import col

# Initialize SparkSession
spark = (SparkSession.builder
        .appName("cs744")
        .master("spark://master:7077")
        .config("spark.driver.memory", "20g")
        .config("spark.executor.memory", "20g")
        .config("spark.executor.cores", "4")
        .getOrCreate())


holidays = spark.read.csv("hdfs://nn:9000/holidays2.csv", inferSchema=True, header=True)
holidays_14 = holidays.filter(col("date").contains("2014"))
holidays_14_birth = holidays_14.filter(col("holiday").contains("Birthday"))
print(holidays_14_birth.count())