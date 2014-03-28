require "./rolodex"
require "./contact"
require "colorize"

class Runner

  def initialize
    @rolodex = Rolodex.new
  end

  def main_menu
    puts "MAIN MENU".green.bold
    puts "1. Add a contact"
    puts "2. See all contacts"
    puts "3. Remove a contact"
    puts "4. Edit a contact"
    puts "5. Add/change details to a contact"
    #puts "6. Take notes for a contact"
    puts "0. To exit".red
    puts "CRM by " +  ("D".yellow +  "O".green +  "M".red +  "I".blue).bold
  end

  def detail_menu
    puts "Adding/change detalis to your contact".green
    puts "1. Add/change an address"
    puts "2. Add/change a phone number "
    puts "3. Add/change an e-mail address"
    puts "0. back to main menu".red
  end

  def add_contact
    puts "Enter Customer's name".yellow
    name = gets.chomp
    @rolodex.create_contact(name)
    puts "Contact #{name} has been added.\n".green
  end

  def show_contacts
    puts "All contacts\n".green + "------------------".blue
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

  def create_address
    puts "Enter contact's ID to edit it".yellow
    id = gets.chomp.to_i
    puts "Enter new contacts address".yellow
    address = gets.chomp
    @rolodex.create_address(id, address)
  end

  def create_phone
    puts "Enter contact's ID to edit it".yellow
    id = gets.chomp.to_i
    puts "Enter new contacts phone number".yellow
    phone = gets.chomp
    @rolodex.create_phone(id, phone)
  end
  
  def create_email
    puts "Enter contact's ID to edit it".yellow
    id = gets.chomp.to_i
    puts "Enter new contacts e-mail".yellow
    email = gets.chomp
    @rolodex.create_email(id, email)
  end

  def add_details
    done = false
    while !done
      detail_menu 
      input = gets.chomp.to_i
      if input == 0
        done = true
      elsif input == 1
        create_address      
      elsif input == 2 
        create_phone
      elsif input == 3
        create_email
      end
    end
  end

  def run
    done = false
    while !done
      main_menu 
      input = gets.chomp.to_i
      if input == 0
        done = true
      elsif input == 1
        add_contact
      elsif input == 2
        show_contacts
      elsif input == 3
        remove_contact
      elsif input == 4
        edit_contact
      elsif input == 5
        add_details
      end
    end
  end

end


runner = Runner.new
runner.run