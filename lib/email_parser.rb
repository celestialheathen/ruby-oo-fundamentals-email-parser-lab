# # Build a class EmailAddressParser that accepts a string of unformatted 
# # emails. The parse method on the class should separate them into
# # unique email addresses. The delimiters to support are commas (',')
# # or whitespace (' ').

# You will be writing an EmailAddressParser class that gets initialized with a string of emails.

# Your job is to parse those email addresses into a useful array using an instance method, parse.

# I should be able to do this:

# email_addresses = "john@doe.com, person@somewhere.org"
# parser = EmailAddressParser.new(email_addresses)

# parser.parse
# # => ["john@doe.com", "person@somewhere.org"] 
# You should be able to initialize with a list of email addresses either separated with spaces or separated with commas. The parse method should, additionally, only return unique addresses.

class EmailAddressParser

    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end

    def parse 
        # email_addresses.split(",").uniq # Return unique CSV emails

        # email_addresses.split(" ").uniq # Return unique space emails
        
        email_addresses.gsub(',', ' ').split(" ").uniq
        
    end

end 

addresses = "john@doe.com, john@doe.com person@somewhere.org,james@gmail.com chase@flatironschool.com, erickim@flatiron.com"
parser = EmailAddressParser.new(addresses)
puts parser.parse()