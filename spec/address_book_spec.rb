require_relative '../models/address_book'

RSpec.describe AddressBook do
  describe "attributes" do
    it "responds to entries" do
      book = AddressBook.new
      expect(book).to respond_to(:entries)
    end

    it "initializes enties as an array" do
      book = AddressBook.new
      expect(book.entries).to be_an(Array)
    end

    it "initializes entries as empty" do
      book = AddressBook.new
      expect(book.entries.size).to eq(0)
    end
  end

  describe "#remove_entry" do
    it "removes only one entry from address book" do
      book = AddressBook.new
      book.add_entry('Tim Rothko','111.333.5555', 'TimR@mail.com')

      name = "Lana Lan"
      phone_number = "123.123.1234"
      email = "l@lan.com"
      book.add_entry(name,phone_number,email)

      expect(book.entries.size).to eq(2)
      book.remove_entry("TimR@mail.com")
      expect(book.entries.size).to eq(1)
    end

    it "removes the correct entry from address book" do
      book = AddressBook.new
      book.add_entry('Tim Rothko','111.333.5555', 'TimR@mail.com')

      name = "Lana Lan"
      phone_number = "123.123.1234"
      email = "l@lan.com"
      book.add_entry(name,phone_number,email)

      book.remove_entry("l@lan.com")

      all_the_entries = book.entries
      something = all_the_entries.first
      expect(something.email).to eq("TimR@mail.com")
    end
  end

# other stuff
  describe "#add_entry" do
    it "Adds only one entry to the address book" do
      book = AddressBook.new
      book.add_entry('Ada Lovelace', '010.012.1815', 'augusta.king@lovelace.com')
      new_entry = book.entries[]

      expect(new_entry.name).to eq('Ada Lovelace')
      expect(new_entry.phone_number).to eq('010.012.1815')
      expect(new_entry.email).to eq('augusta.king@lovelace.com')
    end
   end

end
