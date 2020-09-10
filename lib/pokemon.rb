class Pokemon
  
  attr_accessor :name, :type, :db
  attr_reader :id
  
  def initialize(id=nil, name, grade, db)
    @id = id
    @name = name
    @grade = grade
  end
  
  def save
    if self.id
      self.update
    else
    sql = <<-SQL
      INSERT INTO students (name, grade)
      VALUES (?, ?)
    SQL
    DB[:conn].execute(sql, self.name, self.grade)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
    end
  end  
  
  
  
  
  
end
