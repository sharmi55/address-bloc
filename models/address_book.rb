require_relative 'entry'
require "csv"

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def remove_entry(entry)
    @entries.delete if entry.email == email
    @entries.remove_entry
  end

# other methods starting here

  def add_entry(name, phone_number,email)
    index = 0
    @entries.each do |entry|

      if name < entry.name
        break
      end
      index += 1
    end

    @entries.insert(index, Entry.new(name, phone_number, email))
    end

    def import_from_csv(file_name)

    end
  end
