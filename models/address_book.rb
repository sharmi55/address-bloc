require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []
  end

  def remove_entry(name, phone_number,email)
    delete_entry = []

    @entries.each do |entry|
      if email == entry.email
      delete_entry = entry
      end
    end
  end
# other methods starting here

  def add_entry(email)
    index = 0
    @entries.each do |entry|

      if name < entry.name
        break
      end
      index += 1
    end

    @entries.insert(index, Entry.new(name, phone_number, email))
  end


end
