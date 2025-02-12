# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser


  def initialize(emails)
    @emails = emails
  end

  def parse
    parse = @emails.split(/,\s|[,\s]/)
    removeDupes = []
    parse.each{|i|
      if removeDupes.include?(i) == false
        removeDupes << i
      end
    }
    removeDupes
  end

end
