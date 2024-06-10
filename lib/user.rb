class User
  attr_accessor :name, :age

  def initialize(name, age)
    @name = name
    @age = age
  end

  def introduction
    if @age < 18
      "#{@name}は未成人です。"
    else
      "#{@name}は成人です。"
    end
  end
end
