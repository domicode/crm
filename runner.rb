require "./rolodex"
require "./contact"
require "./notes_tool"
require "colorize"
require "debugger"

class Runner

  def initialize
    @rolodex = Rolodex.new
  end

  def main_menu
    puts "              MAIN MENU              ".cyan.underline.swap
    puts "1. Add a contact"
    puts "2. See all contacts"
    puts "3. Remove a contact"
    puts "4. Edit a contact"
    puts "5. Add/change details to a contact"
    puts "6. Notes tool"
    puts "0. To exit".red
    puts "CRM by " +  ("D".yellow +  "O".green +  "M".red +  "I".blue).bold
  end

  def detail_menu
    puts "Adding/change detalis to your contact".green.underline.bold
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

  def add_details
    puts "Please enter customer ID".yellow
    id = gets.chomp.to_i
    done = false
    while !done
      detail_menu 
      input = gets.chomp.to_i
      if input == 0
        done = true
      elsif input == 1
        create_address(id)      
      elsif input == 2 
        create_phone(id)
      elsif input == 3
        create_email(id)
      end
    end
  end

  def notes
    puts "Enter contact's ID".yellow
    id = gets.chomp.to_i
    @rolodex.note(id)
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
      elsif input == 6
        notes
      end
    end
  end

end


runner = Runner.new
runner.run