# Purpose 
This is a Amazon like store fornt built using MySQL, node.js and javascript skills.
The app will take in orders from customers and deplete stock from the store's inventory. The app will also track product sales across the store's departments and then provide a summary of the highest-grossing departments in the store.


# Funtionality 
The app contains 3 different views: Customer, Manager and Supervisor.

## 1) Customer view
By running Node application called `<bamazonCustomer.js>` a display of all the items available for sale will appear. This include the ids, names, and prices of products for sale.

The app will ask for the ID of the product they would like to buy and the number of units.

Once the purchase is made the app will provide the user witha total bill of sale. 

Note: The app will also dynamically update its database to track product sales.

**Note: please see bamazon screenshots word document for visual walkthrough

## 2) Manager View 
By running Node application called `<bamazonManager.js>`, a list of menu options will be made available for the Manager.

* Manager Options:
   * If a manager selects `<View Products for Sale>`, the app will list every available item: the item IDs, names, prices, and quantities.
   * If a manager selects `<View Low Inventory>`, then it will list all items with an inventory count lower than five.
   * If a manager selects `<Add to Inventory>`, the app will display a prompt that will let the manager "add more" of any item currently in the store.
   * If a manager selects `<Add New Product>`, it will allow the manager to add a completely new product to the store.

**Note: please see bamazon screenshots word document for visual walkthrough


## 3) Supervisor View
By running Node application called `<bamazonSupervisor.js>`, a list of menu options will be made available for the Supervisor.
* Supervisor Options
  * When a supervisor selects `<View Product Sales by Department>`, the app will display a summarized table in their terminal/bash window.
  * When a supervisor selects `<Create New Department>`, the app will display prompts to take in the new department name and feilds
  
**Note: please see bamazon screenshots word document for visual walkthrough
