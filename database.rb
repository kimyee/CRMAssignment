#if I type add contact I am prompted to give a first name, a last name, an email, and
#(optionally) a note. These will be called the attributes from here on. 
#Then a new contact will be created with the given information and assigned an id field automatically


class Database
  @contacts = []
  @id = 1000

  def self.add_contact(contact)
    contact.id = @id
    @contacts << contact
    @id += 1
    
    #p @contacts
  end

  def self.contacts
    @contacts
  end

  def self.display_database
    @contacts.index do |contact| 
      puts "ID: #{contact.id}"
      puts "First Name: #{contact.first_name}"
      puts "Last Name: #{contact.last_name}"
      puts "Email: #{contact.email}"
      puts "Note: #{contact.note}"
      puts " "
    end
  end

  def self.display_attribute(attribute_selected)
    puts attribute_selected == 1
    puts attribute_selected
    @contacts.each do |contact|
      puts "ID: #{contact.id}" if attribute_selected == "1"
      puts "First Name: #{contact.first_name}" if attribute_selected == "2"
      puts "Last Name: #{contact.last_name}" if attribute_selected == "3"
      puts "Email: #{contact.email}" if attribute_selected == "4"
      puts "Note: #{contact.note}" if attribute_selected == "5"
    end
  end
end