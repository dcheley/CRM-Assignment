class Contact
  @@contacts = []
  @@id = 1

attr_reader :id
attr_accessor :first_name, :last_name, :email, :note

  # This method should initialize the contact's attributes
  def initialize(first_name, last_name, email, note = "N/A")
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
    @id = @@id
    @@id += 1
    @@contacts << self #puts contact list into array as Class variable
  end

  # This method should call the initializer,
  # store the newly created contact, and then return it
  def self.create(first_name, last_name, email, note = "N/A")
    new_contact = Contact.new(first_name, last_name, email, note)
    @@contacts << new_contact
    return new_contact
  end

  # This method should return all of the existing contacts
  def self.all
    @@contacts
  end

  # This method should accept an id as an argument
  # and return the contact who has that id
  def self.find(id)
    @@contacts.each {|contact|
      if contact.id == id
        return contact    #if no return, returns previous line of code/statement
      end
    }
      "Contact doesn't exist"
  end
  # This method should allow you to specify
  # 1. which of the contact's attributes you want to update
  # 2. the new value for that attribute
  # and then make the appropriate change to the contact
  def update(attribute, new_attribute)
    if attribute == new_attribute
      new_value == "first_name"
    end
    if new_value == "last_name"
    end
    if new_value == "email"
    end
    if new_value == "note"
    end
  end

  # This method should work similarly to the find method above
  # but it should allow you to search for a contact using attributes other than id
  # by specifying both the name of the attribute and the value
  # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  def self.find_by

  end

  # This method should delete all of the contacts
  def self.delete_all
    [] << @@contacts
  end

  def full_name
    "#{first_name}, #{last_name}"
  end

  # This method should delete the contact
  # HINT: Check the Array class docs for built-in methods that might be useful here
  def delete

  end
  # Feel free to add other methods here, if you need them.
end
