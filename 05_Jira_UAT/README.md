UAT Evidence

UAT

UAT-01 — Display Accurate Availability

Requirement: Customers should see accurate product availability.

Steps:

1. Open a product.
2. Check the current inventory.
3. Check the availability displayed to the customer.

Expected Result:
The availability displayed to the customer matches the current inventory status.

Status: Pass / Fail

⸻

UAT-02 — Prevent Ordering an Out-of-Stock Product

Requirement: The system should prevent customers from ordering unavailable products.

Steps:

1. Select a product with zero available stock.
2. Open the product page.
3. Attempt to add the product to the cart.

Expected Result:
The product is shown as Out of Stock and the customer cannot add it to the cart.

Status: Pass / Fail

⸻

UAT-03 — Update Inventory After an Order

Requirement: Inventory should be updated when an order is placed.

Steps:

1. Check the product’s current inventory.
2. Place an order for the product.
3. Check the inventory again.

Expected Result:
The inventory quantity is updated according to the order.

Status: Pass / Fail

⸻

UAT-04 — Authorised User Can Update Inventory

Requirement: Authorised inventory/store managers should be able to update inventory.

Steps:

1. Log in as an authorised inventory user.
2. Open inventory management.
3. Update a product’s stock quantity.
4. Save the change.

Expected Result:
The inventory update is successfully saved and the updated quantity is reflected in the system.

Status: Pass / Fail

⸻

UAT-05 — Unauthorised User Cannot Update Inventory

Requirement: Only authorised users can modify inventory.

Steps:

1. Log in as an unauthorised user.
2. Attempt to modify inventory.

Expected Result:
The system rejects the update and does not modify the inventory.

Status: Pass / Fail

⸻

UAT-06 — Availability Updated Across Channels

Requirement: Inventory should remain consistent across relevant sales channels.

Steps:

1. Update inventory for a product.
2. Check the product availability on the relevant sales channels.

Expected Result:
The updated inventory/availability is reflected consistently across the relevant channels.

Status: Pass / Fail   



