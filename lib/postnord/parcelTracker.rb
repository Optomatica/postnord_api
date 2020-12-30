class ParcelTracker
  attr_accessor :parcelNo
  attr_accessor :returnParcelNo
  attr_accessor :reference
  def initialize(args)
    args.each { |k,v| send("#{k}=",v) rescue p "#{k} does not exist" }
  end
end
