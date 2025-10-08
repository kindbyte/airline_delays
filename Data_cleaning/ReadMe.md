## Data Cleaning

The dataset was cleaned using SQL in DBeaver to ensure data quality before analysis and modeling. Below are the steps performed:

1. **Checked for missing values** (`01_check_missing_values.sql`):
   - Found 76 missing values in `arr_flights` (0.11% of 69,978 rows) and 92 in `arr_del15`.
2. **Removed rows with missing `arr_flights`** (`02_remove_null_flights.sql`):
   - Deleted 76 rows where `arr_flights IS NULL`.
3. **Analyzed remaining missing values in `arr_del15`** (`03_analyze_null_del15.sql`):
   - Found 16 rows where `arr_del15` and delay-related columns were `NULL`, but `arr_cancelled` or `arr_diverted` had non-zero values.
4. **Filled missing values with zeros** (`04_fill_null_del15.sql`):
   - Filled 16 rows for `arr_del15` and related columns with 0, as they corresponded to cancelled or diverted flights.
5. **Checked for negative delays** (`05_check_negative_delays.sql`):
   - No negative values found in delay-related columns.
6. **Checked delay causes sum** (`06_check_delay_causes.sql`):
   - Found minor discrepancies (e.g., 99.00 vs. 97.99) due to rounding, as per dataset documentation. No corrections needed.
7. **Additional checks** (ongoing):
   - Checking for cases where `arr_del15 > arr_flights` (`07_check_del15_vs_flights.sql`).
   - Checking for duplicates (`08_check_duplicates.sql`).
8. **Prepared cleaned dataset** (`09_create_view_and_export.sql`):
   - Created a view `flights_cleaned` with calculated metrics (`delay_rate`, `cancel_rate`).
   - Exported to CSV for analysis in Python.