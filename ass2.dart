class BankAccount {
  double _balance = 0;

  double get balance => _balance;

  set balance(double amount) {
    if (amount > 0) {
      _balance += amount;
    } else {
      print('Amount must be greater than zero.');
    }
  }
}

void main() {
  var account = BankAccount();
  account.balance = 100;  // Adds 100
  print('Balance: \$${account.balance}');  // Balance: $100
  account.balance = -50;  // Invalid
}