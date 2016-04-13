require 'rubygems'
require 'bundler/setup'

# require your gems as usual
require 'httparty'
require 'optparse'

class Allabolag
  include HTTParty
  base_uri 'localhost:3000'

  def initialize
  end

  def find(company_name)
    options = { body: { name: company_name } }
    self.class.post('/api/v1/companies/find', options)
  end

  def all
    self.class.get('/api/v1/companies')
  end
end

name = ARGV.join(' ')
allabolag = Allabolag.new
company = allabolag.find(name).parsed_response
if !company.first.nil?
  puts company.first['orgnr']
else
  puts "Couldn't be found"
end
