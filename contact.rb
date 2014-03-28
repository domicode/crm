class Contact

  attr_accessor :notes 

  def initalize
    @notes = ""
  end

end

bob = Contact.new
bob.notes = "Spoke to Bob..."
puts bob.notes