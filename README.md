8,9,10,J,Q,K,A+Jokerしかないポーカーの配るロジック作ってみたかったので作ってみた

# 動かし方
```
bundle install
bundle exec pry

pry> deck = Deck.new
=> #<Deck @cards=[]>

# カードを配る
pry> deck.add_cards
=> ["♤ 9", "♡ 9", "♢ J", "♧ Q", "♢ A"]

# 2,3,4のカードを交換する(指定は0-4)
pry> deck.changes(2,3,4)
=> ["♤ 9", "♡ 9", "♡ 10", "♢ K", "JO"]
```

