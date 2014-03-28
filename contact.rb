class Contact

  @@counter = 1000 #class variable 

  attr_accessor :notes, :name, :id

  def initialize
    @notes = ""
    @id = Contact.get_id #invoke class methods
  end

  def to_s
    "ID: #{@id}\nName: #{@name}\nNotes:#{@notes}\n------------------"
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
