require_relative '../models/address_book.rb'

class MenuController
  attr_accessor :address_book

  def initialize
    @address_book = AddressBook.new
  end

  def main_menu

    puts "Main Menu - #{@address_book.entries.count} entries"
    puts "1 - View all entries"
    puts "2 - Create an entry"
    puts "3 - Search for an entry"
    puts "4 - Import entries from a CSV"
    puts "5 - Delete all entries"
    puts "6 - Exit"
    print "Enter your selection: "

    selection = gets.to_i

    case selection
    when 1
      system "clear"
      view_all_entries
      main_menu
    when 2
      system "clear"
      create_entry
      main_menu
    when 3
      system "clear"
      search_entries
      main_menu
    when 4
      system "clear"
      read_csv
      main_menu
    when 5
      system "clear"
      expunge_all_entries
      main_menu

    when 6
      puts "Good-bye!"

      exit(0)

    else
      system "clear"
      puts "Sorry, that is not a valid input"
      main_menu
    end
  end

  def view_all_entries

    @address_book.entries.each do |entry|
      system  "clear"
      puts entry.to_s

      entry_submenu(entry)
    end

    system "clear"
    puts "End of entries"
  end

  def create_entry
    system "clear"
    puts "New AddressBloc Entry"

    print "Name: "
    name = gets.chomp
    print "Phone number: "
    phone_number = gets.chomp
    print "Email: "
    email = gets.chomp

    @address_book.add_entry(name, phone_number, email)

    system "clear"
    puts "New entry created"
  end

  # assignment 23
  def expunge_all_entries
    puts "Are you sure you want to delete all entries?"
    selection = gets.chomp

    puts "1 - No, take me back to the main menu"
    puts "2 - Yes, let's get rid of it all!"

    selection = gets.to_i

    case selection
    when 1
      system "clear"
      main_menu
    when 2
      system "clear"
      @address_book.entries.each do |remove|

      puts "All your entries have now been expunged from this Addess Book!"
      main_menu
    else
      system "clear"
      puts "Sorry, that is not a valid input"
      main_menu
    end
  end
  #end assignment 23

  def read_csv
  end

  def entry_submenu(entry)
    puts "n - next entry"
    puts "d - delete entry"
    puts "e - edit this entry"
    puts "m - return to main menu"

    selection = gets.chomp

    case selection

    when "n"

    when "d"
    when "e"

    when "m"
      system "clear"
      main_menu
    else
      system "clear"
      puts "#{selection} is not a valid input"
      entry_submenu(entry)
    end
  end



end
