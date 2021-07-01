# 正規表現
text = <<TEXT
I love Ruby.
Python is a great language.
Java and JavaScript are different.
TEXT

text.scan(/[A-Z][A-Za-z]+/)

# ["Ruby", "Python", "Java", "JavaScript"]


text =<<TEXT
私の郵便番号は1234567です。
僕の住所は6770056兵庫県西脇市板波町1234だよ。
TEXT
puts text.gsub(/(\d{3})(\d{4})/,'\1\2')


text = <<-TEXT
名前：伊藤淳一
電話：03-1234-5678
住所：兵庫県西脇市板波町1-2-3
TEXT
text.scan /\d\d-\d\d\d\d-\d\d\d\d/
# => ["03-1234-5678"]
