class Parcel<Base
  attr_accessor :copies
  attr_accessor :weight
  attr_accessor :contents
  attr_accessor :valuePerParcel

  def initialize(args)
    args.each { |k,v| send("#{k}=",v) rescue p "#{k} does not exist" }
  end

  def to_json
    JSON.dump to_h
  end
end
