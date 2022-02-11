# frozen_string_literal: true

#
# RADWIMPS（ラッドウィンプス）は、日本の4人組ロックバンドである。
# 所属レコード会社はユニバーサルミュージック、所属レーベルはEMI Records/Muzinto Records。
# 所属事務所は有限会社ボクチン（英語: voque ting、所属はRADWIMPSのみ）。
# 略称は「ラッド(RAD)」。
# @note バンド名は、「すごい」「強い」「いかした」という意味の軽いアメリカ英語の俗語「rad」と、「弱虫」「意気地なし」という意味の「wimp」を組み合わせた造語であり、「かっこいい弱虫」「見事な意気地なし」といった意味である。
# @see https://ja.wikipedia.org/wiki/RADWIMPS Wikipedia - RADWIMPS
#
class RADWIMPS
  class Error < StandardError; end

  VERSION = "2016.8.24.1.0.3"
  RAISE = method(:raise)  # Somehow steep fails with Kernel.raise

  #
  # RADWIMPSを新しく結成します。
  #
  # @param [Boolean] strict 前前前世に戻ることができなかった場合に例外を発生させるかどうか。
  #
  def initialize(strict: false)
    @life_counter = 0
    @strict = strict
  end

  #
  # 前世を探します。
  #
  # @return [self]
  #
  def then
    @life_counter -= 1
    self
  end

  alias 前 then

  #
  # 来世を探します。
  #
  # @return [self]
  #
  def raise
    @life_counter += 1
    self
  end

  alias 来 raise

  #
  # そのぶきっちょな笑い方をめがけて やってきます。
  #
  # @raise [RADWIMPS::Error] 前前前世に戻ることができなかった場合。
  #
  def set
    if @strict
      if @life_counter < -3
        RAISE.(Error, "前世に行きすぎました。現在は#{format_counter}にいます。")
      elsif @life_counter == 0
        RAISE.(Error, "君の前前前世を探していません。現在は#{format_counter}にいます。")
      elsif @life_counter > -3
        RAISE.(Error, "君の前前前世までたどり着いていません。現在は#{format_counter}にいます。")
      else
        puts format_counter
      end
    else
      puts format_counter
    end
    @life_counter = 0
  end

  alias 世 set

  private

  def format_counter
    if @life_counter == 0
      "現世"
    elsif @life_counter > 0
      "来" * @life_counter + "世"
    else
      "前" * @life_counter.abs + "世"
    end
  end
end
