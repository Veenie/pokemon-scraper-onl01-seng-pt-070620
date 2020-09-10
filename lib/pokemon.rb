class Pokemon
  
  attr_accessor :name, :type, :db
  attr_reader :id
  
  def initialize(id:nil, name:, type:, db:)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def self.save(name, type, db)
    db.execute("INSERT INTO pokemon VALUES (?, ?);" name, type)

  end  
  
  
  
  
  
end
