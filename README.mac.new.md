- karabiner-elements

Simple Modifications の欄。
Add itemで追加可能。ここで追加するべきItemは4つ。

caps_lock → left_command
かなキー → fn
left_command → left_control
left_control → hyphen (-)
かなキーをfnにするのは、fnキーを修飾キーとして様々なキーバインディングを実現するためである。ちなみにMac純正キーボードでないとfnキーを修飾キーにはできないらしい。言い換えると、Macを使うならばサードパーティ製のキーボードを使ってはならないということである。

Function Keys
Use all F1, F2,... にチェックを入れる。こうすることでfnキーを修飾キーとして使える。

Complex Modifications

"Add rule"で自分でカスタマイズしたものを入れる。このディレクトリにある、11112222.json をKarabinerで読み込んで、全て "Enable" とする。

- wordservice

インストールして、コントロールパネル→キーボード→サービスで、
WordService: Insert Time を有効にして、ctrl+cmd+option+shift + A あたりをショートカットに割り当てる。
WordService: Insert Long Date を有効にして、ctrl+cmd+option+shift + B あたりをショートカットに割り当てる。

- OSの設定

コントロールパネル→言語と地域→詳細→時刻の「中」で、秒を外す(言い換えると、「短」と同じフォーマットにする)
