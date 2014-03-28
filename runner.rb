require "./rolodex"
require "./contact"

class Runner

  def initialize
    @rolodex = Rolodex.new
  end

  def main_menu
    puts "Amazing CRM"
    puts "1. Add a contact"
    puts "0. to exit"
  end

  def add_contact
    puts "Enter Customer's name"
    name = gets.chomp

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
        end
    end
  end

end


runner = Runner.new
runner.run