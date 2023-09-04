/*
    2. WAP to simulate Super Market Billing system in which...

    Create multiple customers through array of object.
    When each customer is entered (instantiated) note their cust_id, cust_name, cust_contact
    Create a menu driven system which gives the customer verities of categories and their products.
    Whenever user selects any product simulate the feature to add product in cust_cart which will contain 4 parameters for each product pro_id, pro_name, pro_qty, pro_price.
    Apply billing and discount criteria's on the final amount after calculating each customer's number of product's price.
                                    10% disc. on 500 - 1500
                                    20% disc. on 1500 - 3500
                                    25% disc. on 3500 - 6500
                                    30% disc. for above all.
    add searching functionalities by cust_id which gives cust_id, cust_name, cust_contact, list of products, their price ang quantity and include final amount and discount amount.
*/
import 'dart:io';

class Product {
  int pro_id;
  String pro_name;
  int pro_qty;
  double pro_price;

  Product(this.pro_id, this.pro_name, this.pro_qty, this.pro_price);
}

class Customer {
  int cust_id;
  String cust_name;
  String cust_contact;
  List<Product> cust_cart = [];

  Customer(this.cust_id, this.cust_name, this.cust_contact);
}

void main() {
  List<Customer> customers = [];

  while (true) {
    print("\n1. Add Customer");
    print("2. Select Products");
    print("3. Search Customer by ID");
    print("4. Exit");
    print("Enter your choice: ");
    int choice = int.parse(stdin.readLineSync() ?? '0');

    switch (choice) {
      case 1:
        print("\nEnter customer ID:");
        int custId = int.parse(stdin.readLineSync() ?? '0');
        print("Enter customer name:");
        String custName = stdin.readLineSync() ?? '0';
        print("Enter customer contact:");
        String custContact = stdin.readLineSync() ?? '0';
        customers.add(Customer(custId, custName, custContact));
        break;

      case 2:
        print("\nEnter customer ID:");
        int custId = int.parse(stdin.readLineSync() ?? '0');
        Customer? selectedCustomer;

        for (var customer in customers) {
          if (customer.cust_id == custId) {
            selectedCustomer = customer;
            break;
          }
        }

        if (selectedCustomer == null) {
          print("\nCustomer not found.");
        } else {
          print("\n1. Add Product");
          print("2. Exit");
          print("\nEnter your choice: ");
          int prodChoice = int.parse(stdin.readLineSync() ?? '0');

          switch (prodChoice) {
            case 1:
              print("\nEnter product ID:");
              int prodId = int.parse(stdin.readLineSync() ?? '0');
              print("Enter product name:");
              String prodName = stdin.readLineSync() ?? '0';
              print("Enter product quantity:");
              int prodQty = int.parse(stdin.readLineSync() ?? '0');
              print("Enter product price:");
              double prodPrice = double.parse(stdin.readLineSync() ?? '0');
              selectedCustomer.cust_cart
                  .add(Product(prodId, prodName, prodQty, prodPrice));
              break;

            default:
              break;
          }
        }
        break;

      case 3:
        print("Enter customer ID:");
        int searchId = int.parse(stdin.readLineSync() ?? '0');
        bool found = false;

        for (var customer in customers) {
          if (customer.cust_id == searchId) {
            print("\nCustomer ID: ${customer.cust_id}");
            print("Customer Name: ${customer.cust_name}");
            print("Customer Contact: ${customer.cust_contact}");
            double totalPrice = 0;

            for (var product in customer.cust_cart) {
              print(
                  "\nProduct ID: ${product.pro_id}, \nName: ${product.pro_name}, \nQuantity: ${product.pro_qty}, \nPrice: ${product.pro_price}");
              totalPrice += product.pro_qty * product.pro_price;
            }

            double discount = 0;

            if (totalPrice >= 500 && totalPrice < 1500) {
              discount = totalPrice * 0.1;
            } else if (totalPrice >= 1500 && totalPrice < 3500) {
              discount = totalPrice * 0.2;
            } else if (totalPrice >= 3500 && totalPrice < 6500) {
              discount = totalPrice * 0.25;
            } else if (totalPrice >= 6500) {
              discount = totalPrice * 0.3;
            }

            double finalAmount = totalPrice - discount;

            print("\nTotal Price: $totalPrice");
            print("Discount: $discount");
            print("Final Amount: $finalAmount");
            found = true;
            break;
          }
        }

        if (!found) {
          print("\nCustomer not found.");
        }
        break;

      case 4:
        exit(0);
        break;

      default:
        print("\nInvalid choice.");
        break;
    }
  }
}
