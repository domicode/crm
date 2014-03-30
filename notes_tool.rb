require "./menu"
require "colorize"

class Notes

@@note_counter = 0

  attr_accessor :notes, :customer_id

  def initialize
    @id_notes = Notes.get_id
    @menu = Menu.new
    @notes = []
  end

  def notes_run
    done = false
      while !done
        @menu.note_menu 
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
    done = false
    while !done
      puts "Please add your text (type 'end' to quit)".yellow
      note = gets.chomp
      @notes << note
      puts "you added a note".green
      if note == "end"
        done = true
        @notes.delete("end")
      end
    end
  end

  def change_note
    puts "Please add the id of your note".yellow
    id = gets.chomp.to_i
    puts "Please add your new version (or 'del' for delte)".yellow
    text = gets.chomp
    @notes[id-1] = [text]
    if text == "del"
    @notes.delete_at(id-1)
    end
  end


  def show_note
    puts "#{@notes}"
  end


  def input
    notes_run
    notes_string
  end

  def notes_string
    @notes
  end

  def self.get_id # = class method / there are other 3 ways for class methods - which ones? 
    @@note_counter += 1
    @@note_counter
  end


end
