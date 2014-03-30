class Choice

  def initilaize
    @process = Processes.new
  end

  

  def choice(input)
    if input == 0 or input == 7
      exit
    elsif input == 1
      puts "This works"
      input = gets.chomp
      #@process.add_contact
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

end