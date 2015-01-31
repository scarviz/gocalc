# gocalc

Go on AndroidのSDK Apps作成のサンプルです。

手順
--------
サンプルソースを取得
	$ go get github.com/scarviz/gocalc

gobindをインストール
	$ go install golang.org/x/mobile/cmd/gobind

サンプルソースに移動
	$ cd $GOPATH/src/github.com/scarviz/gocalc

"go_" + パッケージ名となるディレクトリを作成する
	$ mkdir calc/go_calc

gobindを使って、必要になるファイルを自動生成
	$ gobind -lang=go github.com/scarviz/gocalc/calc > calc/go_calc/go_calc.go
	$ gobind -lang=java github.com/scarviz/gocalc/calc > calc/Calc.java

go_calc.goは共有ライブラリの作成用に、Calc.javaの方は後でAndroidのプロジェクトに含める
main.goにはgo_calcパッケージを含める

共有ライブラリを作成する
	$ sudo docker run --rm -v $GOPATH/src:/src mobile /bin/bash -c 'cd /src/github.com/scarviz/gocalc && ./make.bash'

AndroidStudioを立ち上げ、適当なプロジェクトを作成する

javaフォルダ以下にgoフォルダ以下を配置

main以下にjniLibsフォルダを作成し、その下にarmeabi-v7aフォルダ以下を配置する

goのロジックを実装

Runで端末(またはエミュレータ)にインストールし、実行する
