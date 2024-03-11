# Question 1:  Explain the relationship between the "Product" and "Product_Category" entities from the above diagram.

A one-to-many relationship exists between the `Product` and `Product_Category` entities. This means:

- One product belongs to `one` category.
- A category can have `many` products.
  A foreign key constraint enforces this relationship. The `Product` table has a column named `category_id` referencing the `primary key` (id) of the `Product_Category` table.

# Question 2: How could you ensure that each product in the "Product" table has a valid category assigned to it?

Several methods ensure each product has a valid category assigned:

- **Database Constraints:**
  - **Foreign Key Constraint:** Enforces data integrity by preventing products with invalid category IDs.
  - **Check Constraint:** Restricts allowed values for `category_id` to a specific list or a valid category query.
- **Application Logic:**
  - **Validation on Insert:** Validates the chosen category ID before adding the product to the database.
  - **Dropdown Menu with Valid Categories:** Limits category selection to valid options from the `Product_Category` table.
- **Data Seeding and Management:**
  - **Maintain a List of Valid Categories:** Ensures consistency and simplifies validation checks.
  - **Restrict Category Addition/Deletion:** Implements controls for managing categories if adding or deleting them affects product validity.

# Question 3: Schema of `MySQL` Database

> **_NOTE:_** Please checkout the `schema.sql` file
