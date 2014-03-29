class Processes

  def initialize
    @rolodex = Rolodex.new
  end

  def add_contact
    puts "Enter Customer's name".yellow
    name = gets.chomp
    @rolodex.create_contact(name)
    puts "Contact #{name} has been added.\n".green
  end

  def show_contacts
    puts "All contacts\n".green + "------------------".blue.swap
    @rolodex.show_contacts
  end

  def remove_contact
    puts "Enter contact's ID to remove it".yellow
    id = gets.chomp.to_i
    @rolodex.remove_contact(id)
  end

  def edit_contact
    puts "Enter contact's ID to edit it".yellow
    id = gets.chomp.to_i
    puts "Enter new contact name".yellow
    new_name = gets.chomp
    @rolodex.edit_contact(id, new_name)
  end

  def create_address(id)
    puts "Enter new contacts address".yellow
    address = gets.chomp
    @rolodex.create_address(id, address)
  end


  def create_phone(id)
    puts "Enter new contacts phone number".yellow
    phone = gets.chomp
    @rolodex.create_phone(id, phone)
  end
  
  def create_email(id)
    puts "Enter new contacts e-mail".yellow
    email = gets.chomp
    @rolodex.create_email(id, email)
  end

  def show_details(id)
    @rolodex.show_details(id)
  end


  def notes
    puts "Enter contact's ID".yellow
    id = gets.chomp.to_i
    @rolodex.note(id)
  end

end