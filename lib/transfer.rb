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
    binding.pry
    @receiver.balance << amount 
  end 
end
