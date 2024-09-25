class Contact
  attr_accessor :name, :phone, :email

  def initialize(name, phone, email)
    @name = name
    @phone = phone
    @email = email
  end

  def to_s
    "#{@name} - Phone: #{@phone}, Email: #{@email}"
  end
end

class ContactList
  def initialize
    @contacts = []
  end

  def add_contact(contact)
    @contacts << contact
  end

  def list_contacts
    @contacts.each_with_index do |contact, index|
      puts "#{index + 1}. #{contact}"
    end
  end
end


contact_list = ContactList.new
contact_list.add_contact(Contact.new('John Doe', '123-456-7890', 'john@example.com'))
contact_list.add_contact(Contact.new('Jane Smith', '987-654-3210', 'jane@example.com'))
contact_list.list_contacts
