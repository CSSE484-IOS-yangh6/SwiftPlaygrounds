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

class AtmBankAccount: BankAccount {
    var withdrawFee: Double
    
    override convenience init(name: String, balance: Double) {
        self.init(name: name, balance: balance, withdrawFee: 2.0)
    }
    
    init(name: String, balance: Double, withdrawFee: Double) {
        self.withdrawFee = withdrawFee
        super.init(name: name, balance: balance)
    }
    
    convenience init() {
        self.init(name: "Unknown", balance: 0, withdrawFee: 2.0)
    }
    
    override func withdraw(amount: Double) {
        super.withdraw(amount: amount)
        self.balance -= self.withdrawFee
    }
}

//var bobAccount = AtmBankAccount(name: "Bob", balance: 100, withdrawFee: 33)

var bobAccount = AtmBankAccount()
bobAccount.name = "Bob"

bobAccount.deposit(amount: 100)
bobAccount.withdraw(amount: 40)

bobAccount





