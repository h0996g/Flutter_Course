// ============================================
// ! example of a class with private fields and methods
class BankAccount {
  double _balance = 0; // private field

  void deposit(double amount) {
    if (amount > 0) _balance += amount;
  }

  void withdraw(double amount) {
    if (amount <= _balance) _balance -= amount;
  }

  double getBalance() => _balance;
}

void main() {
  BankAccount account = BankAccount();
  account.deposit(100);
  print(account.getBalance());

  // ! ERROR: Cannot access private field from outside the class
  // print(account._balance); // ❌ will not compile
}
