# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_reader :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    if emails.include?(" ") && emails.include?(", ")
      emails.split(", ").map { |email| email.split(" ") }.flatten.uniq
    elsif emails.include?(", ")
      emails.split(", ").uniq
    elsif emails.include?(" ")
      emails.split(" ").uniq
    end
  end
end
