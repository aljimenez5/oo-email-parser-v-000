require 'pry'

class EmailParser
  attr_accessor :emails, :emails_arr

  def initialize(emails)
    @emails = emails
  end

  def parse
    @emails_arr = emails.split(/\s*[,\s]\s*/)
    @emails_arr.delete('')
    return @emails_arr.uniq
  end

end
