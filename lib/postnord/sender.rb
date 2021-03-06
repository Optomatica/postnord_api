require 'postnord/base.rb'
class Sender < Base
  attr_accessor :phone
  attr_accessor :email
  attr_accessor :zipcode
  attr_accessor :name
  attr_accessor :address1
  attr_accessor :address2
  attr_accessor :country
  attr_accessor :city
  attr_accessor :quickId
  attr_accessor :orgNo

  def initialize(args)
    args.each { |k,v| send("#{k}=",v) rescue p "#{k} does not exist" }
  end

  def to_json
    JSON.dump to_h
  end
end
