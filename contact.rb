class Contact

  @@counter = 1000 #class variable 

  attr_accessor :name, :id, :address, :phone, :email, :notes

  def initialize
    @id = Contact.get_id #invoke class methods
    @notes = []
  end

  def to_s
    "ID: #{@id}\nName: #{@name}\nAddress: #{@address}\nPhone: #{@phone}\nE-mail: #{@email}\nNotes:#{@notes}\n" + "------------------".blue.swap
  end

  def self.get_id # = class method / there are other 3 ways for class methods - which ones? 
    @@counter += 1
    @@counter
  end

end

=begin
bob = Contact.new
bob.notes = "Spoke to Bob..."
puts bob.notes
=end
