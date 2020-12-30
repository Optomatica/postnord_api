class PostnordPDF
  attr_accessor :href
  attr_accessor :id
  attr_accessor :description
  attr_accessor :pdf

  def initialize(args)
    args.each { |k,v| send("#{k}=",v) rescue p "#{k} does not exist" }
  end
end
