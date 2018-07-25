# Mac向け設定

Karabinerというソフトウェアが極めて重要なので、MacOSのupdateには十分に気をつけること。Karabinerが対応してなければupdateしてはならない。

## ShowyEdge 3.2.0

### メニューバーだけの色の変更ではなく全画面する

- Basic の Indicato height を 37
- Advanced → Indicator → Colors layout orientation → horizontal

快適！

## Karabiner-Elements

KarabinerのSimple ModificationsとFunction KeysとComplex Modificationsの３つを設定する。また、MacのSystem Preferenceの設定も少しする。

### Simple Modifications 編

Add itemで追加可能。ここで追加するべきItemは4つ。

- caps_lock → left_command
- かなキー → fn
- left_command → left_control
- left_control → hyphen (-)

かなキーをfnにするのは、fnキーを修飾キーとして様々なキーバインディングを実現するためである。ちなみにMac純正キーボードでないとfnキーを修飾キーにはできないらしい。言い換えると、Macを使うならばサードパーティ製のキーボードを使ってはならないということである。

### Function Keys

Use all F1, F2,... にチェックを入れる。こうすることでfnキーを修飾キーとして使える。

### Complex Modifications

ここではたくさんの設定を書く必要がある。一番面倒なところだが乗り切ればあとは楽。

"Add rule" を押して、"Import more rules from the Internet (open a web browser)"をクリック。
ブラウザに飛ぶ。"International (Language Specific)"→"For Japanese （日本語環境向けの設定） (rev 3)"をImport。
そしてKarabinerの設定画面に戻り、"英数・かなキーをtoggle方式にする"を"Enable"にする。

次に自分でカスタマイズしたものを入れる。このディレクトリにある、12345.json をKarabinerで読み込んで、全て "Enable" とする。

### System Preference 編

#### 標準のキーリピートが遅いので早くする

System Preference → Keyboard → Keyboardタブ → "Key Repeat" を "Fast"

## BetterTouchTool

BetterTouchToolの本家サイトから購入するよりもAppStoreでBetterSnapToolというものを購入するのが良いらしい。

BetterTouchToolでは、Trackpadsの設定だけ行う。Global設定で、

- 3 Finger Tap → Middle Click
- 3 Finger Swipe Down → cmd + W (タブを閉じる)
- 3 Finger Swipe Up → cmd + Q (アプリを閉じる)
- 3 Finger Swipe Right → ctrl + tab (タブを移動)
- 3 Finger Swipe Left → ctrl + shift + tab (タブを移動)

とする。System Preferenceのトラックパッドと干渉している場合はSystem Preferenceの方のそれぞれの設定を切っていく。

### 問題点

特になし。