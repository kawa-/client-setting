# Windows 向け設定

自分の理想とするインターフェースを実現するためにいろいろとやる。
流れとしてはRemapKey.exe でキーを入れ替えて、AutoHotKeyで細かく設定する。

## 想定環境

- Windows 7 / 10 

## 必要なソフトウェア

- AutoHotKey 1.1.29.00 (これより新しいものでも OK)
- RemapKey.exe (MS 公式ツール。https://www.microsoft.com/en-us/download/details.aspx?id=17657 をインストール)

## 使い方

RemapKey と AutoHotKey (以下 AHK ) の2つの設定を行う。

### RemapKey の設定

キーを入れ替える。キーボードの種類にも依存するが一般的な日本語キーボードで、
WIN|ALT|無変換|スペース|変換|カタカナ・ひらがな
と並んでいる場合の設定。

C:\Program Files (x86)\Windows Resource Kits\Tools にある remapkey.exe を *管理者権限* で起動して、

- CapsLock → - (ハイフン、イコールのキー)
- 無変換 → 半角・全角
- 変換 → Right Control (Control ではなく Right Control。というのも Right Control をホットキーとして用いるため)
- ひらがな → Ctrl

として、保存して再起動する。

### AutoHotKey の設定

このディレクトリに含まれる、mywin.ahk ファイルをAHKで読み込む。また、このファイルのコピーを、スタートアップディレクトリ (C:\Users\ユーザー名\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup) においておけば起動時に自動的に読み込まれる。

#### 解説

半角キーをホットキーとして、ホームポジションから動かさずにいろいろと打てるようにしている。そのために、半角キーに右Ctrlを割り当てている。AHKでは任意のキーをホットキーにできるが、2つのキーの組み合わせまでであり、SHIFTなどを含む3つのキーの同時押しに対応させるために右Ctrlを有効に活用している。

#### 既知の不具合

- 不具合とは言い難いが、このスクリプト使用時に物理キーの右Ctrlは使わないほうが良い。というのも本スクリプトではいろんなキーとの組み合わせに使われているからだ。
- 以前のAHKのバージョンでは右Ctrlを使うとVisual Studioと干渉していた。このバージョンではどうかわからないが、少なくともVisual Studio Codeでは問題なさそう(VSとVSCは全く異なるものかもしれないが）。
- 以前のAHKのバージョンでは、移動操作中に謎の文字が挿入されることが稀にあった。今回はどうか分からないが。
- 右Shiftをホットキーとして使ってみると、物理キーボードのtとyで、shiftを含む移動系動作が動かない。他のキーは動くのに不思議。なので右Ctrlをホットキーとして使っている

## TODO

- IME起動状態とそうでないときに分かりやすいようにしたい。
