class Company < ActiveRecord::Base
  validates_format_of :orgnr, with: /([^@\i]{6})-([0-9]{2,4})/i
end
