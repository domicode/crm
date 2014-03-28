class Notes

@@note_counter = 0

  attr_accessor :notes, :customer_id

  def initialize
    @id = Notes.get_id
  end

 def menu
    puts "Adding / changing notes for your contact".green
    puts "1. Add a new note"
    puts "2. Change a note"
    puts "3. Display all notes"
    puts "0. back to main menu".red
  end

  def notes_run
    menu
    done = false
      while !done
        menu 
        input = gets.chomp.to_i
        if input == 0
          done = true
        elsif input == 1
          add_note   
        elsif input == 2 
          change_note
        elsif input == 3
          show_note
        end
      end
  end

  def add_note
    contact.name = name
    @contacts << contact
    puts "you added a note"
  end

  def self.get_id # = class method / there are other 3 ways for class methods - which ones? 
    @@note_counter += 1
    @@note_counter
  end


end