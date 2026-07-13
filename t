[1mdiff --git a/july_10th.ipynb b/july_10th.ipynb[m
[1mindex 5d7d2b3..099d1d5 100644[m
[1m--- a/july_10th.ipynb[m
[1m+++ b/july_10th.ipynb[m
[36m@@ -20,49 +20,264 @@[m
    "cell_type": "markdown",[m
    "id": "acb4fee4",[m
    "metadata": {},[m
[31m-   "source": [][m
[32m+[m[32m   "source": [[m
[32m+[m[32m    "| Letter | Meaning     | Easy Memory                           |\n",[m
[32m+[m[32m    "| ------ | ----------- | ------------------------------------- |\n",[m
[32m+[m[32m    "| A      | Atomicity   | All or Nothing                        |\n",[m
[32m+[m[32m    "| C      | Consistency | Data stays correct                    |\n",[m
[32m+[m[32m    "| I      | Isolation   | Transactions don't disturb each other |\n",[m
[32m+[m[32m    "| D      | Durability  | Saved forever after commit            |\n"[m
[32m+[m[32m   ][m
   },[m
   {[m
    "cell_type": "markdown",[m
    "id": "9d749a26",[m
    "metadata": {},[m
[31m-   "source": [][m
[32m+[m[32m   "source": [[m
[32m+[m[32m    "| What               | Why                         | Problem Solved     | Memory Trick                 |\n",[m
[32m+[m[32m    "| ------------------ | --------------------------- | ------------------ | ---------------------------- |\n",[m
[32m+[m[32m    "| **Concurrency**    | Allow many users at once    | Faster system      | Many people working together |\n",[m
[32m+[m[32m    "| **Lock**           | Protect data during updates | Prevents conflicts | Bathroom lock 🔒             |\n",[m
[32m+[m[32m    "| **Shared Lock**    | Allow many readers          | Safe reading       | Library 📚                   |\n",[m
[32m+[m[32m    "| **Exclusive Lock** | Allow one writer            | Safe updates       | Bathroom 🚪                  |\n"[m
[32m+[m[32m   ][m
   },[m
   {[m
    "cell_type": "markdown",[m
    "id": "34b00d47",[m
    "metadata": {},[m
[32m+[m[32m   "source": [[m
[32m+[m[32m    "| Topic            | What                                | Why                                        | Memory                      |\n",[m
[32m+[m[32m    "| ---------------- | ----------------------------------- | ------------------------------------------ | --------------------------- |\n",[m
[32m+[m[32m    "| Isolation Levels | Rules for what transactions can see | Prevent inconsistent reads                 | Privacy rules               |\n",[m
[32m+[m[32m    "| Deadlock         | Two transactions wait forever       | Prevent system freeze                      | Two cars on one-lane bridge |\n",[m
[32m+[m[32m    "| MVCC             | Multiple row versions               | Readers and writers don't block each other | Multiple snapshots 📸       |\n"[m
[32m+[m[32m   ][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "metadata": {},[m
[32m+[m[32m   "source": [[m
[32m+[m[32m    "| Topic                                 | What is it?                                                              | When to Use                                       | Why Use It?                                                | Memory Trick                        |\n",[m
[32m+[m[32m    "| ------------------------------------- | ------------------------------------------------------------------------ | ------------------------------------------------- | ---------------------------------------------------------- | ----------------------------------- |\n",[m
[32m+[m[32m    "| **Replication (Primary → Replica)**   | Copies data from one primary database to one or more replica databases.  | When your application has many **read** requests. | Reduces read load, improves availability, enables backups. | **One teacher → Many students** 📚  |\n",[m
[32m+[m[32m    "| **Sharding**                          | Splits one large database into multiple smaller databases (shards).      | When one database becomes too large or too busy.  | Distributes data and traffic across multiple servers.      | **One library → Many branches** 🏛️ |\n",[m
[32m+[m[32m    "| **Caching (Redis)**                   | Stores frequently used data in memory for very fast access.              | When the same data is requested repeatedly.       | Reduces database queries and speeds up responses.          | **Sticky Note on your desk** 📝     |\n",[m
[32m+[m[32m    "| **Failover & High Availability (HA)** | Automatically switches to a backup database/server if the primary fails. | When downtime is unacceptable.                    | Keeps the application running during failures.             | **Backup Generator** ⚡              |\n",[m
[32m+[m[32m    "| **Query Execution Plan (`EXPLAIN`)**  | Shows how the database executes a query internally.                      | When queries are slow.                            | Helps identify bottlenecks and optimize performance.       | **Google Maps Route** 🗺️           |\n",[m
[32m+[m[32m    "| **Database Performance Tuning**       | Optimizing the database for speed and efficiency.                        | When the application becomes slow.                | Improves query speed, scalability, and resource usage.     | **Tune a Car Engine** 🚗            |\n"[m
[32m+[m[32m   ][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "7bd6ee0d",[m
[32m+[m[32m   "metadata": {},[m
[32m+[m[32m   "source": [[m
[32m+[m[32m    "| Topic                  | One-Line Summary                                            |\n",[m
[32m+[m[32m    "| ---------------------- | ----------------------------------------------------------- |\n",[m
[32m+[m[32m    "| **Replication**        | Copy data to multiple databases for faster reads.           |\n",[m
[32m+[m[32m    "| **Sharding**           | Split data across multiple databases to scale horizontally. |\n",[m
[32m+[m[32m    "| **Caching (Redis)**    | Keep frequently used data in memory for ultra-fast access.  |\n",[m
[32m+[m[32m    "| **Failover & HA**      | Automatically switch to a healthy database if one fails.    |\n",[m
[32m+[m[32m    "| **EXPLAIN**            | See how the database executes your query.                   |\n",[m
[32m+[m[32m    "| **Performance Tuning** | Make queries and the database run faster.                   |\n",[m
[32m+[m[32m    "\n"[m
[32m+[m[32m   ][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "59417101",[m
[32m+[m[32m   "metadata": {},[m
[32m+[m[32m   "source": [[m
[32m+[m[32m    "| Normal Form | Rule                                         | Problem Solved                           | Memory Trick               |\n",[m
[32m+[m[32m    "| ----------- | -------------------------------------------- | ---------------------------------------- | -------------------------- |\n",[m
[32m+[m[32m    "| **1NF**     | One cell = One value                         | Removes multiple values in one column    | 📦 One Box = One Item      |\n",[m
[32m+[m[32m    "| **2NF**     | Separate data into correct tables            | Removes duplicate customer data          | 👨 Customer has own table  |\n",[m
[32m+[m[32m    "| **3NF**     | Every column depends only on the primary key | Removes indirect/transitive dependencies | 🏷️ Category has own table |\n"[m
[32m+[m[32m   ][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "08e3af7b",[m
[32m+[m[32m   "metadata": {},[m
[32m+[m[32m   "source": [[m
[32m+[m[32m    "First Normal Form (1NF)\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "| Order ID | Product 1 | Product 2 |\n",[m
[32m+[m[32m    "| -------- | --------- | --------- |\n",[m
[32m+[m[32m    "| 101      | Laptop    | Mouse     |\n",[m
[32m+[m[32m    "\n"[m
[32m+[m[32m   ][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "c04b1b6d",[m
[32m+[m[32m   "metadata": {},[m
[32m+[m[32m   "source": [[m
[32m+[m[32m    "after 1NF\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "| Order ID | Customer | Product  |\n",[m
[32m+[m[32m    "| -------- | -------- | -------- |\n",[m
[32m+[m[32m    "| 101      | Vino     | Laptop   |\n",[m
[32m+[m[32m    "| 101      | Vino     | Mouse    |\n",[m
[32m+[m[32m    "| 101      | Vino     | Keyboard |\n",[m
[32m+[m[32m    "| 102      | Ravi     | Phone    |\n",[m
[32m+[m[32m    "| 102      | Ravi     | Charger  |\n"[m
[32m+[m[32m   ][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "d95b8950",[m
[32m+[m[32m   "metadata": {},[m
[32m+[m[32m   "source": [[m
[32m+[m[32m    "✅ Second Normal Form (2NF) - ✅ No repeated customer details.\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "| Customer ID | Name | Phone      |\n",[m
[32m+[m[32m    "| ----------- | ---- | ---------- |\n",[m
[32m+[m[32m    "| 1           | Vino | 9876543210 |\n",[m
[32m+[m[32m    "| 2           | Ravi | 9876500000 |\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "| Order ID | Customer ID |\n",[m
[32m+[m[32m    "| -------- | ----------- |\n",[m
[32m+[m[32m    "| 101      | 1           |\n",[m
[32m+[m[32m    "| 102      | 2           |\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "| Order ID | Product  |\n",[m
[32m+[m[32m    "| -------- | -------- |\n",[m
[32m+[m[32m    "| 101      | Laptop   |\n",[m
[32m+[m[32m    "| 101      | Mouse    |\n",[m
[32m+[m[32m    "| 101      | Keyboard |\n",[m
[32m+[m[32m    "| 102      | Phone    |\n",[m
[32m+[m[32m    "| 102      | Charger  |\n",[m
[32m+[m[32m    "\n"[m
[32m+[m[32m   ][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "66699e64",[m
[32m+[m[32m   "metadata": {},[m
[32m+[m[32m   "source": [[m
[32m+[m[32m    "| Normal Form | Think Like This                    | Bank Example                                                      |\n",[m
[32m+[m[32m    "| ----------- | ---------------------------------- | ----------------------------------------------------------------- |\n",[m
[32m+[m[32m    "| **1NF**     | **One cell = One value**           | Don't store two phone numbers in one cell.                        |\n",[m
[32m+[m[32m    "| **2NF**     | **One table = One thing (entity)** | Customer, Branch, Employee, and Account each get their own table. |\n",[m
[32m+[m[32m    "| **3NF**     | **Don't repeat facts**             | Store \"SBI\" once in the Bank table, not in every Branch row.      |\n"[m
[32m+[m[32m   ][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "1e399298",[m
[32m+[m[32m   "metadata": {},[m
[32m+[m[32m   "source": [[m
[32m+[m[32m    "Customers\n",[m
[32m+[m[32m    "----------\n",[m
[32m+[m[32m    "Customer_ID (PK)\n",[m
[32m+[m[32m    "Name\n",[m
[32m+[m[32m    "Phone\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "        │\n",[m
[32m+[m[32m    "        │\n",[m
[32m+[m[32m    "        ▼\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "Orders\n",[m
[32m+[m[32m    "----------\n",[m
[32m+[m[32m    "Order_ID (PK)\n",[m
[32m+[m[32m    "Customer_ID (FK)\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "        │\n",[m
[32m+[m[32m    "        │\n",[m
[32m+[m[32m    "        ▼\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "Order_Items\n",[m
[32m+[m[32m    "------------\n",[m
[32m+[m[32m    "Order_ID (FK)\n",[m
[32m+[m[32m    "Product_ID (FK)\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "        │\n",[m
[32m+[m[32m    "        │\n",[m
[32m+[m[32m    "        ▼\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "Products\n",[m
[32m+[m[32m    "------------\n",[m
[32m+[m[32m    "Product_ID (PK)\n",[m
[32m+[m[32m    "Product_Name\n",[m
[32m+[m[32m    "Category_ID (FK)\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "        │\n",[m
[32m+[m[32m    "        │\n",[m
[32m+[m[32m    "        ▼\n",[m
[32m+[m[32m    "\n",[m
[32m+[m[32m    "Categories\n",[m
[32m+[m[32m    "------------\n",[m
[32m+[m[32m    "Category_ID (PK)\n",[m
[32m+[m[32m    "Category_Name"[m
[32m+[m[32m   ][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "3a37d2eb",[m
[32m+[m[32m   "metadata": {},[m
    "source": [][m
   },[m
   {[m
    "cell_type": "markdown",[m
[32m+[m[32m   "id": "b0380b5b",[m
    "metadata": {},[m
    "source": [][m
   },[m
   {[m
    "cell_type": "markdown",[m
[31m-   "id": "7bd6ee0d",[m
    "metadata": {},[m
    "source": [][m
   },[m
   {[m
    "cell_type": "markdown",[m
[31m-   "id": "4bfe5ffc",[m
[32m+[m[32m   "id": "a3866892",[m
[32m+[m[32m   "metadata": {},[m
[32m+[m[32m   "source": [][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "78163729",[m
    "metadata": {},[m
    "source": [][m
   },[m
   {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": null,[m
[31m-   "id": "f5b44327",[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "29618caf",[m
[32m+[m[32m   "metadata": {},[m
[32m+[m[32m   "source": [][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "849f172b",[m
[32m+[m[32m   "metadata": {},[m
[32m+[m[32m   "source": [][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "8fd0672d",[m
[32m+[m[32m   "metadata": {},[m
[32m+[m[32m   "source": [][m
[32m+[m[32m  },[m
[32m+[m[32m  {[m
[32m+[m[32m   "cell_type": "markdown",[m
[32m+[m[32m   "id": "7b424b20",[m
    "metadata": {},[m
[31m-   "outputs": [],[m
    "source": [][m
   }[m
  ],[m
  "metadata": {[m
[32m+[m[32m  "kernelspec": {[m
[32m+[m[32m   "display_name": "Python 3",[m
[32m+[m[32m   "language": "python",[m
[32m+[m[32m   "name": "python3"[m
[32m+[m[32m  },[m
   "language_info": {[m
[31m-   "name": "python"[m
[32m+[m[32m   "name": "python",[m
[32m+[m[32m   "version": "3.14.4"[m
   }[m
  },[m
  "nbformat": 4,[m
[1mdiff --git a/july_11th.ipynb b/july_11th.ipynb[m
[1mdeleted file mode 100644[m
[1mindex 9aaf911..0000000[m
[1m--- a/july_11th.ipynb[m
[1m+++ /dev/null[m
[36m@@ -1,19 +0,0 @@[m
[31m-{[m
[31m- "cells": [[m
[31m-  {[m
[31m-   "cell_type": "code",[m
[31m-   "execution_count": null,[m
[31m-   "id": "18fa4897",[m
[31m-   "metadata": {},[m
[31m-   "outputs": [],[m
[31m-   "source": [][m
[31m-  }[m
[31m- ],[m
[31m- "metadata": {[m
[31m-  "language_info": {[m
[31m-   "name": "python"[m
[31m-  }[m
[31m- },[m
[31m- "nbformat": 4,[m
[31m- "nbformat_minor": 5[m
[31m-}[m
