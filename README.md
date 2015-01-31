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

"go_" + パッケージ名となるディレクトリを作成

    $ mkdir calc/go_calc

gobindを使って、必要になるファイルを自動生成

    $ gobind -lang=go github.com/scarviz/gocalc/calc > calc/go_calc/go_calc.go
    $ gobind -lang=java github.com/scarviz/gocalc/calc > calc/Calc.java

共有ライブラリを作成

    $ sudo docker run --rm -v $GOPATH/src:/src mobile /bin/bash -c 'cd /src/github.com/scarviz/gocalc && ./make.bash'

AndroidStudioを立ち上げ、適当なプロジェクトを作成する

javaディレクトリ以下にgoディレクトリ以下を配置する

go/calcディレクトリ以下にCalc.javaを配置する

mainディレクトリ以下にjniLibsディレクトリを作成し、その下にarmeabi-v7aディレクトリ以下を配置する

goの関数(Calc.javaのメソッド)を、Activityクラスなどから呼び出すように実装する

Runで端末(またはエミュレータ)にインストールし、実行する
