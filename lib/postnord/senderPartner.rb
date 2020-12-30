require 'postnord/base.rb'
class SenderPartners < Base
  attr_accessor :id
  attr_accessor :custNo

  def initialize(args)
    args.each { |k,v| send("#{k}=",v) rescue p "#{k} does not exist" }
  end

  def to_json
    JSON.dump to_h
  end
end
