require 'pry'
class Transfer
  
  attr_accessor :status 
  
  attr_reader :sender, :receiver, :amount
  
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end
  
  def valid?
    if @sender.valid? && @receiver.valid?
      true
    else 
      false
    end 
  end 
  
  def execute_transaction 
    if @status == "pending"
      @receiver.balance += amount
      @sender.balance -= amount
      @status = "complete"
    end 
    else @status == "rejected"
       return "Transaction rejected. Please check your account balance."
    end 
  end 
end
