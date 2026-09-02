# BRD & FRD --- Inventory Availability & Synchronisation Improvement

Working documentation for the portfolio project. The content reflects
the case-study requirements developed during the project.

# BRD

## Project Overview

**Project:** Inventory Availability & Synchronisation Improvement

The project aims to improve inventory accuracy and product availability
across online and physical stores. The solution will ensure that
inventory changes are reflected accurately, customers receive reliable
availability information, and unavailable products cannot be ordered.

## Business Problem

The current inventory system does not update product availability
accurately across sales channels. Customers may therefore place orders
for products that are actually out of stock, resulting in cancellations
and customer dissatisfaction.

## Business Objectives

1.  Improve inventory accuracy across online and physical stores.
2.  Reduce orders placed for unavailable products.
3.  Reduce inventory-related order cancellations.
4.  Improve customer experience by providing reliable availability
    information.

## Stakeholders

  Stakeholder             Why involved
  ----------------------- -------------------------------------------
  Customers               Need accurate product availability
  Store Managers          Need current inventory information
  Inventory Managers      Manage and update inventory
  E-commerce/Operations   Monitor orders and customer impact
  Development Team        Implements system requirements
  QA/Testers              Validate that requirements work correctly

## Scope

### In scope

-   Inventory synchronisation
-   Product availability
-   Inventory updates
-   Order-related inventory changes
-   Online/store inventory visibility

### Out of scope

-   Entire website redesign
-   Unrelated payment changes
-   Marketing/pricing changes

## AS-IS Process

``` text
1. Customer opens the website
        ↓
2. Customer views product
        ↓
3. Product appears available
        ↓
4. Customer adds product to cart
        ↓
5. Customer proceeds to payment
        ↓
6. System checks inventory
        ↓
7. Actual stock is unavailable
        ↓
8. Customer receives "Out of Stock" message
        ↓
9. Order is cancelled
```

## TO-BE Process

``` text
1. Customer opens the website
        ↓
2. Customer views product
        ↓
3. System checks current inventory
        ↓
4. Product availability is displayed
        ↓
     ┌────────────────────┐
     ↓                    ↓
Available            Out of stock
     ↓                    ↓
Add to cart         Cannot order
     ↓
Proceed to payment
     ↓
Payment successful
     ↓
Inventory updated
     ↓
Order confirmed
```

## Business Requirements

1.  Inventory information should be updated when stock changes.
2.  Customers should see accurate product availability.
3.  Authorised staff should be able to update inventory information.
4.  Inventory quantities should remain consistent across sales channels.
5.  The system should reduce orders being placed for unavailable
    products.

## Business Rules

1.  Product availability must reflect the latest inventory information.
2.  Customers cannot place an order when available stock is zero.
3.  Only authorised inventory staff or store managers can update
    inventory information.
4.  Inventory changes caused by orders must be reflected in the
    inventory system.
5.  Inventory information should remain consistent across relevant sales
    channels.
6.  When a product is out of stock, the product may remain visible, but
    the customer must not be able to place an order.

## Success Criteria

1.  Inventory availability is accurately reflected across sales
    channels.
2.  Orders for unavailable products are prevented.
3.  Inventory-related cancellations are reduced.
4.  Inventory discrepancies are reduced.
5.  Customers receive reliable product availability information.

# FRD

## Functional Requirements

1.  System shall update inventory when an order is placed or inventory
    changes.
2.  System shall display the current availability status of each
    product.
3.  System shall allow authorised inventory/store managers to update
    inventory information.
4.  System shall show product availability in the shopping cart.
5.  System shall prevent customers from ordering unavailable products.
6.  System shall continue displaying out-of-stock products while
    disabling the ordering action.

## Non-Functional Requirements

1.  Inventory changes should be reflected within an agreed target (2
    seconds for this case study).
2.  Inventory information should be accurate and consistent across
    relevant sales channels.
3.  Only authorised users should be able to modify inventory
    information.
4.  The system should remain available during normal business operating
    periods.

## System Workflow

Customer opens website → Views product → System checks current inventory
→ System determines availability → Available: add to cart / Out of
stock: cannot order.

For a successful order: Proceed to payment → Payment successful →
Inventory updated → Order confirmed.

## Functional Business Rules

-   Availability reflects the latest inventory information.
-   Zero available stock prevents ordering.
-   Only authorised users can modify inventory.
-   Orders trigger inventory updates.
-   Inventory remains consistent across relevant channels.
-   Out-of-stock products may remain visible but cannot be ordered.

## Exception / Error Scenarios

  -----------------------------------------------------------------------
  ID                      Scenario                Expected System
                                                  Behaviour
  ----------------------- ----------------------- -----------------------
  EX-01                   Product has zero stock  Display "Out of Stock"
                                                  and disable ordering.

  EX-02                   Customer attempts to    Prevent the order from
                          order an unavailable    being placed.
                          product                 

  EX-03                   Inventory update fails  Display an appropriate
                                                  error and prevent
                                                  incorrect inventory
                                                  information from being
                                                  published.

  EX-04                   Unauthorised user       Reject the update and
                          attempts to update      prevent modification.
                          inventory               

   EX-05                   Inventory information   Flag the
                          cannot be synchronised  synchronisation issue
                                                  for investigation
                                                  rather than displaying
                                                  unverified
                                                  availability.
                                                  
  -----------------------------------------------------------------------

## User / System Interactions

### Customer → System

-   Opens product page
-   Views availability
-   Adds available product to cart
-   Proceeds to checkout

### System → Customer

-   Displays current availability
-   Allows ordering when stock is available
-   Prevents ordering when stock is unavailable
-   Displays an appropriate out-of-stock message

### Inventory Staff / Store Manager → System

-   Logs in as an authorised user
-   Views inventory information
-   Updates inventory quantities when required

### System → Inventory Staff / Store Manager

-   Validates authorisation
-   Saves valid inventory updates
-   Updates product availability
-   Makes updated inventory information available across relevant
    channels
