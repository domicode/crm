

class Menu

  attr_accessor :selection, :choice

  def initialize
    @selection = 1
    @choice = ""
  end

  def main_menu(value)
      puts "\e[H\e[2J"
      puts "              MAIN MENU              ".cyan.underline.swap
      content(value)
      puts "CRM by " +  ("D".yellow +  "O".green +  "M".red +  "I".blue).bold
  end

  def content(selection)
    if selection == 1
    puts "1. Add a contact".green.swap
    puts "2. See all contacts"
    puts "3. Remove a contact"
    puts "4. Edit a contact"
    puts "5. Add/change details to a contact"
    puts "6. Notes tool"
    puts "0. To exit".red
    elsif selection == 2
    puts "1. Add a contact"
    puts "2. See all contacts".green.swap
    puts "3. Remove a contact"
    puts "4. Edit a contact"
    puts "5. Add/change details to a contact"
    puts "6. Notes tool"
    puts "0. To exit".red
    elsif selection == 3
    puts "1. Add a contact"
    puts "2. See all contacts"
    puts "3. Remove a contact".green.swap
    puts "4. Edit a contact"
    puts "5. Add/change details to a contact"
    puts "6. Notes tool"
    puts "0. To exit".red
    elsif selection == 4
    puts "1. Add a contact"
    puts "2. See all contacts"
    puts "3. Remove a contact"
    puts "4. Edit a contact".green.swap
    puts "5. Add/change details to a contact"
    puts "6. Notes tool"
    puts "0. To exit".red
    elsif selection == 5
    puts "1. Add a contact"
    puts "2. See all contacts"
    puts "3. Remove a contact"
    puts "4. Edit a contact"
    puts "5. Add/change details to a contact".green.swap
    puts "6. Notes tool"
    puts "0. To exit".red
    elsif selection == 6
    puts "1. Add a contact"
    puts "2. See all contacts"
    puts "3. Remove a contact"
    puts "4. Edit a contact"
    puts "5. Add/change details to a contact"
    puts "6. Notes tool".green.swap
    puts "0. To exit".red
    elsif selection == 0 or selection == 7
    puts "1. Add a contact"
    puts "2. See all contacts"
    puts "3. Remove a contact"
    puts "4. Edit a contact"
    puts "5. Add/change details to a contact"
    puts "6. Notes tool"
    puts "0. To exit".red.swap
    else
    puts "1. Add a contact"
    puts "2. See all contacts"
    puts "3. Remove a contact"
    puts "4. Edit a contact"
    puts "5. Add/change details to a contact"
    puts "6. Notes tool"
    puts "0. To exit".red
    end
  end

  def detail_menu
    puts "Adding/change details to your contact".green.underline.bold
    puts "1. Add/change an address"
    puts "2. Add/change a phone number "
    puts "3. Add/change an e-mail address"
    puts "4. Show current contact details"
    puts "5. Change the contact to edit"
    puts "0. back to main menu".red
  end

  def note_menu
    puts "Adding / changing notes for your contact".green.underline.bold
    puts "1. Add a new note"
    puts "2. Change a note"
    puts "3. Display no notes"
    #puts "4. Move position of a note"
    puts "0. back to main menu".red
  end


end