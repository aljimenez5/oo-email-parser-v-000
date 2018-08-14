require 'pry'

class EmailParser
  attr_accessor :emails, :emails_arr

  def initialize(emails)
    @emails = emails
  end
  
  def self.parse
    parser = self.new
    parser.emails = emails
    @emails_arr = emails.split(/\s*[,\s]\s*/)
    @emails_arr.delete('')
    binding.pry
    return @emails_arr.uniq
  end

end
