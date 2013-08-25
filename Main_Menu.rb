#1. ...I am presented with a prompt to select from several different options: add contact,
#modify contact, delete contact, display all, display attribute, or exit. This will be called the
#main menu from here on.

#2. ...if I type add contact I am prompted to give a first name, a last name, an email, and
#(optionally) a note. These will be called the attributes from here on. Then a new contact
#will be created with the given information and assigned an id field automatically.

#3. ...if I type modify contact I am prompted to enter the id of the contact I want to modify.
#a. When an id is entered, I am prompted to type yes or no to confirm my selection.
#i. If yes is typed, I am prompted to change the id, first name, last name,email, and note of the contact I selected.
#ii. If no is typed, I am returned back to the main menu.

#4. ...if display all is typed, I am shown a list of all of the contacts.

#5. ...if display attribute is typed, I am prompted to enter an attribute and when an attribute is
#entered, I see a list of the attribute for every contact.

#6. ...if delete is typed, I am prompted to enter the id of the contact I want to delete and when
#an id is entered, the contact with that id is deleted.

#7. ...if exit is typed, I am exited out of the program and returned to the command line.
require "./database"


class CRM
  def main_menu
    print_main_menu
    @user_selected = gets.to_i
    call_option(@user_selected)
    while @user_selected != 6
      main_menu
    end
  end

  def print_main_menu
    puts "[1] Add a new contact" #done
    puts "[2] Modify an existing contact"
    puts "[3] Delete a contact"
    puts "[4] Display all the contacts" #done
    puts "[5] Display an attribute" 
    puts "[6] Exit" #done
    puts "Enter a number: "
  end

  def call_option(user_selected)
    add_new_contact         if user_selected == 1
    modify_existing_contact if user_selected == 2
    Delete a contact if user_selected == 3
    display_all_contacts if user_selected == 4
    display_attribute_menu if user_selected == 5
    exit if user_selected == 6
  end
  
  def add_new_contact
    print "Enter First Name: "
    first_name = gets.chomp
    print "Enter Last Name: "
    last_name = gets.chomp
    print "Enter Email Address: "
    email = gets.chomp
    print "Enter a Note: "
    note = gets.chomp
    contact = Contact.new(first_name, last_name, email, note)
    Database.add_contact(contact)
    puts "Contact added"
  end


  def modify_existing_contact 
    puts "Please enter the id of the contact you want to modify"
    id_modified = gets.to_i
    puts "Are you sure? (Yes/No)"
    decide_to_modify = gets.chomp
    #display attribute

  end

  def display_all_contacts
    puts "databse" 
    Database.display_database
  end

  def display_attribute_menu
    puts "[1] ID"
    puts "[2] First Name"
    puts "[3] Last Name"
    puts "[4] Email"
    puts "[5] Note"
    puts "Enter a number: "
    attribute_selected = gets.chomp
    puts attribute_selected
    Database.display_attribute(attribute_selected)
    main_menu
  end


end

class Contact

  attr_accessor :id, :first_name, :last_name, :email, :note
  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end

end

a_crm_app = CRM.new
a_crm_app.main_menu


