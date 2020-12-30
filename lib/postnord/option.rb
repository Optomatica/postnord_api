class Option<Base
  attr_accessor :message
  attr_accessor :to
  attr_accessor :id
  attr_accessor :languageCode
  attr_accessor :from

  def initialize(args)
    args.each { |k,v| send("#{k}=",v) rescue p "#{k} dose not exist" }
  end
end
