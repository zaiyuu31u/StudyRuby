# ハッシュはキーと値の組み合わせでデータを管理するオブジェクトのこと
# つくりかた
{}
# => と : でキーと値を区切る
{ :a => 'a' }
{ a: 'a'}
{ 'a': 'a' }

#改行もできる
{
  'japan' => 'yen',
  'us' => 'dollar',
  'india' => 'rupee'
}

# 最後にカンマがついてもエラーにはならない
{
  'japan' => 'yen',
  'us' => 'dollar',
  'india' => 'rupee',
}

# 同じキーが複数つかわれると最後に出てきた値が使われる
{ 'japan' => 'yen', 'japan' => '円' }

# ハッシュとブロックは{}の中身や{}の出てくる場所で見分けられる
# => や : でキーと値が区切られてたらハッシュっぽい
hash = { 'a' => 'b' }

# メソッドの直後に{がきている、||で囲まれたブロックパラメータがある、{}内に処理が書かれている
[1, 2, 3].each { |n| puts n }

# 5.2.1 要素の追加、変更、取得
currencies = {'japan' => '円', 'us' => 'dollar', 'india' => 'rupee'}

# 追加
currencies['italy'] = 'euro'

# 上書き
currencies['japan'] = 'yen'
 
# 取得
currencies['japan']
currencies['brazil'] #=> 存在しないキーを指定するとnilが返る

# 5.2.2
# 繰り返し処理
# ブロックパラメータがキーと値で2個になっている
currencies.each do |key, value|
  puts "#{key}: #{value}"
end

# ブロックパラメータを一つにするとキーと値が配列に格納される
currencies.each do |key_value|
  key = key_value[0]
  value = key_value[1]
  puts "#{key}: #{value}"
end

# 5.2.3
# ハッシュの同値比較、要素数の取得、要素の削除
# == すべてのキーと値が同じならtrue
a = { 'x' => '1', 'y' => '2', 'z' => '3' }
b = { 'x' => '1', 'y' => '2', 'z' => '3' }
a == b #=> true

# 並び順が異なっていてもキーと値がすべて同じならtrue
c = { 'z' => '3', 'x' => '1', 'y' => '2' }
a == c #=> true

# size lengthでハッシュの要素の数を取得できる
{}.size #=> 0
a.size
a.length

# delete(削除したい要素のキー)で要素を指定して削除できる
# 戻り値は削除された要素の値
currencies.delete('japan') #=> 'yen'
# キーがなければnilが返る
currencies.delete('korea') #=> nil
# ブロックを渡すと、nilの代わりにブロックの戻り値を返せる
currencies.delete('korea') { |key| "Not found: #{key}" } #=> 'Not found: korea'

# 5.3
# シンボルとは任意の文字列と一対一に対応するオブジェクト
# 文字列の代わりに用いることもできるが、必ず白文字列と同じ振る舞いをするわけではない
# 同じ内容のシンボルは必ず同一のオブジェクト
:apple.object_id === :apple.object_id

# シンボルはSymbolクラスのオブジェクト
# シンボルはRuby内部で整数として管理されるので、文字列よりも高速に処理できる
'apple' == 'apple'
:apple == :apple

# シンボルはイミュータブル
:apple.upcase! #=> NoMethodError

# 5.3.2
 
