# frozen_string_literal: true

require_relative "lib/radwimps"

Gem::Specification.new do |spec|
  spec.name = "RADWIMPS"
  spec.version = RADWIMPS::VERSION
  spec.authors = ["sevenc-nanashi"]
  spec.email = ["sevenc-nanashi@sevenbot.jp"]

  spec.summary = "君の前前前世から僕は 君を探しはじめたよ"
  spec.description = <<~LYRICS.gsub(/\n/, "\n\n")
    == RADWIMPS

    やっと眼を覚ましたかい
    それなのになぜ眼も合わせやしないんだい？
    「遅いよ」と怒る君
    これでもやれるだけ飛ばしてきたんだよ
    心が身体を追い越してきたんだよ
    君の髪や瞳だけで胸が痛いよ
    同じ時を吸いこんで離したくないよ
    遥か昔から知る その声に
    生まれてはじめて 何を言えばいい?

    君の前前前世から僕は 君を探しはじめたよ
    そのぶきっちょな笑い方をめがけて やってきたんだよ
    君が全然全部なくなって チリヂリになったって
    もう迷わない また１から探しはじめるさ
    むしろ０から また宇宙をはじめてみようか


    どっから話すかな
    君が眠っていた間のストーリー
    何億 何光年分の物語を語りにきたんだよ
    けどいざその姿この眼に映すと
    君も知らぬ君とジャレて 戯れたいよ
    君の消えぬ痛みまで愛してみたいよ
    銀河何個分かの 果てに出逢えた
    その手を壊さずに どう握ったならいい?

    君の前前前世から僕は 君を探しはじめたよ
    その騒がしい声と涙をめがけ やってきたんだよ
    そんな革命前夜の僕らを誰が止めるというんだろう
    もう迷わない 君のハートに旗を立てるよ
    君は僕から諦め方を 奪い取ったの

    (おぉ おぉ おぉ おぉ）
    (おぉ おぉ おぉ おぉ）
    (おぉ おぉ おぉ おぉ）
    (おぉ おぉ おぉ おぉ）
    (おぉ おぉ おぉ おぉ）

    前前前世から僕は 君を探しはじめたよ
    そのぶきっちょな笑い方をめがけて やってきたんだよ
    君が全然全部なくなって チリヂリになったって
    もう迷わない また１から探しはじめるさ
    何光年でも この歌を口ずさみながら
  LYRICS
  spec.homepage = "https://github.com/sevenc-nanashi/radwimps"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.0.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/sevenc-nanashi/radwimps"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
