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

# 5.2.2
