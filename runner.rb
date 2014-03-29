require "./rolodex"
require "./contact"
require "./notes_tool"
require "./processes"
require "colorize"
require "debugger"
require "./menu"
require 'rubygems'
require 'termios'



class Runner

  def initialize
    @rolodex = Rolodex.new
    @menu = Menu.new
    @selection = 1
    @choice = ""
    @process = Processes.new
  end


  
=begin
  def run
    done = false
    while !done
      menu_select
      input = @choice
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
=end

  def add_details
    puts "Please enter customer ID".yellow
    id = gets.chomp.to_i
    done = false
    while !done
      @menu.detail_menu 
      input = @menu.choice.to_i
      if input == 0
        done = true
      elsif input == 1
        @process.create_address(id)      
      elsif input == 2 
        @process.create_phone(id)
      elsif input == 3
        @process.create_email(id)
      elsif input == 4
        @process.show_details(id)
      elsif input == 5
        done = true
        add_details
      end
    end
  end

  def choice(input)
    if input == 0 or input == 7
      exit
    elsif input == 1
      @process.add_contact
    elsif input == 2
      @process.show_contacts
    elsif input == 3
      @process.remove_contact
    elsif input == 4
      @process.edit_contact
    elsif input == 5
      add_details
    elsif input == 6
      @process.notes
    end
  end

  def run
    done = false
    while !done
      @menu.main_menu(@selection)
      with_unbuffered_input do
        1000.times do
          c = STDIN.getc
          if c == "A"
            @selection = (@selection - 1) % 7 
            @menu.main_menu(@selection)
            done = true
          elsif c == "B"
            @selection = (@selection + 1) % 7 
            @menu.main_menu(@selection)
            done = true
          elsif c == "1" 
            @selection = 1
            @menu.main_menu(@selection)
            done = true
          elsif c == "2" 
            @selection = 2
            @menu.main_menu(@selection)
          elsif c == "3" 
            @selection = 3
            @menu.main_menu(@selection)
          elsif c == "4" 
            @selection = 4
            @menu.main_menu(@selection)
          elsif c == "5" 
            @selection = 5
            @menu.main_menu(@selection)
          elsif c == "6" 
            @selection = 6
            @menu.main_menu(@selection)
          elsif c == "0" 
            @selection = 0
            @menu.main_menu(@selection)
          elsif c == "\n"
            done = true 
            choice(@selection)
          end
        end
      end
    end
  end

  def with_unbuffered_input
    old_attrs = Termios.tcgetattr(STDOUT)

    new_attrs = old_attrs.dup

    new_attrs.lflag &= ~Termios::ECHO
    new_attrs.lflag &= ~Termios::ICANON

    Termios::tcsetattr(STDOUT, Termios::TCSANOW, new_attrs)

    yield
  ensure
    Termios::tcsetattr(STDOUT, Termios::TCSANOW, old_attrs)
  end

end


runner = Runner.new
runner.run