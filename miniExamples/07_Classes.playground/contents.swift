// Simple class

class BankAccount: CustomStringConvertible {
    var name: String
    var balance: Double
    
    static var numberOfBankAccounts = 0
    
    init(name: String, balance: Double) {
        self.name = name
        self.balance = balance
        BankAccount.numberOfBankAccounts += 1
    }
    
    static func getNumberOfBankAccounts() -> Int {
        return BankAccount.numberOfBankAccounts
    }
    
    func deposit(amount: Double) {
        self.balance += amount
    }
    
    func withdraw(amount: Double) {
        self.balance -= amount
    }
    
    var description: String {
        return "\(self.name): $\(self.balance)"
    }
}

var daveAccount = BankAccount(name: "Dave", balance: 100.00)
daveAccount.name
daveAccount.balance += 100
daveAccount.balance

//daveAccount.deposit(50)
//daveAccount.withdraw(10)

daveAccount.deposit(amount: 50)
daveAccount

var daveAccount2 = BankAccount(name: "Dave2", balance: 200.00)
BankAccount.getNumberOfBankAccounts()

// Subclass






//var bobAccount = AtmBankAccount()
//bobAccount.deposit(100)
//bobAccount.withdraw(40)





