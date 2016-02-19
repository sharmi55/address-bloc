require_relative 'entry'

class AddressBook
  attr_reader :entries

  def initialize
    @entries = []

  end

  #=> remove_entry

  def remove_entry(email)
    @entries.each do |e|
      @entries.delete(e) if e.email == email
  end

  #=> add_entry
  def add_entry(name, phone_number, email)

    index = 0
    @entries.each do |entry|

      if name < entry.name
        break
      end
      index += 1
    end

    @entries.insert(index,Entry.new(name,phone_number,email))
    end
  end
