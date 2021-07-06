class User
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def hello
    # self無しでnameメソッドを呼ぶ
    "Hello,I am #{name}."
  end

  def hi
    # self付きでnameメソッドを呼ぶ
    "Hi,I am #{self.name}."
  end

  def my_name
    # 直接インスタンス変数の@nameにアクセスする
    "My name is #{@name}."
  end
end

user = User.new("Alice")
puts user.hello
puts user.hi
puts user.my_name
