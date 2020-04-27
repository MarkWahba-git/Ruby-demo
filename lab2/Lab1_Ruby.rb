class ComplexNumbers 
    attr_reader :a, :b
    @@AddTwoNumbers=0
    @@MultiplyTwoNumbers=0
    @@AddBulkNumbers=0
    @@MultiplyBulkNumbers=0


  def initialize(a, b)
    @a = 0.0 + a # real
    @b = 0.0 + b # imaginary
  end

  def Add (other)
    @@AddTwoNumbers+=1
    @a += other.a
    @b += other.b
     self
  end

  def Multiply(other)
    @@MultiplyTwoNumbers+=1
    new_a = @a * other.a - b * other.b
    @b = @b * other.a + @a * other.b
    @a = new_a
    self
  end

  def self.bulk_add(cns)
    @@AddBulkNumbers+=1
    sum = ComplexNumbers.new(0,0)
    cns.each  do |cn|
        sum.Add(cn)
    end 
    sum 
  end 

  def self.bulk_multiply(cns)
    @@MultiplyBulkNumbers+=1
    multi = ComplexNumbers.new(1,0)
    cns.each  do |cn|
        multi.Multiply(cn)
    end 
    multi 
  end 

  def self.get_stats()
    puts "add function has been called "+@@AddTwoNumbers.to_s+" times"
    puts "multiply function has been called "+@@MultiplyTwoNumbers.to_s+" times"
    puts "add bulk function has been called "+@@AddBulkNumbers.to_s+" times"
    puts "multiply bulk function has been called "+@@MultiplyBulkNumbers.to_s+" times"
end

end 

c1=ComplexNumbers.new(1,2)
c2=ComplexNumbers.new(3,4)
c3=ComplexNumbers.new(5,6)
arr=[c1,c2,c3]
sum=ComplexNumbers.bulk_add(arr)
multi=ComplexNumbers.bulk_multiply(arr)



puts(sum.a,sum.b)
puts(multi.a,multi.b)

ComplexNumbers.get_stats()


# c4=c1.Add(c2)
# c5=c1.Multiply(c2)
# puts(c3.a,c3.b)
# puts(c4.a,c4.b)