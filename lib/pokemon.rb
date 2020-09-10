class Pokemon
  
  attr_accessor :name, :type, :db
  attr_reader :id
  
  def initialize(id=nil, name, type, db)
    @id = id
    @name = name
    @type = type
    @db = db
  end
  
  def save
    if self.id
      self.update
    else
    sql = <<-SQL
      INSERT INTO students (name, type)
      VALUES (?, ?)
    SQL
    DB[:conn].execute(sql, self.name, self.type)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
    end
  end  
  
  
  
  
  
end
