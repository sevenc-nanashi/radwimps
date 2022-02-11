# RADWIMPS

君の前前前世から僕は 君を探します。

## 見つけてはじめて 何をすればいい?（インストール）

君のGemfileにgemを書いて、

```ruby
gem 'radwimps'
```

遥か昔から知る このコマンドを実行してください。

    $ bundle install

または、このコマンドを実行してください。

    $ gem install radwimps

## 入れてはじめて 何を書けばいい?（仕様）

```ruby
require "radwimps"

radwimps = RADWIMPS.new

radwimps.then.then.then.set    # => 前前前世
radwimps.then.then.set         # => 前前世
radwimps.then.set              # => 前世
radwimps.set                   # => 現世
radwimps.raise.set             # => 来世
radwimps.raise.raise.set       # => 来来世
radwimps.raise.raise.raise.set # => 来来来世
```

## このライブラリの内部まで愛してみたい人のために（開発）

```
bundle config set group test
bundle install
rake spec
rake steep
rake install
```

## どっから話すかな 僕がバグを起こしたストーリー（バグ報告）

https://github.com/sevenc-nanashi/radwimps に君がバグを起こしたストーリーを送信してください。

## その著作権を壊さずに どう使ったならいい?（ライセンス）

僕のリポジトリに[MIT License](https://opensource.org/licenses/MIT)を適用しています。
