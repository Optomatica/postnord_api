class Line<Base
  attr_accessor :statNo
  attr_accessor :value
  attr_accessor :contents
  attr_accessor :copies
  attr_accessor :netWeight
  attr_accessor :sourceCountryCode
  attr_accessor :valuesPerItem

  def initialize(args)
    args.each { |k,v| send("#{k}=",v) rescue p "#{k} does not exist in line" }
  end
end
