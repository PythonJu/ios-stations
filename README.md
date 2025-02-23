


## バージョン情報


| 言語、フレームワークなど | バージョン |
| :----------------------: | :--------: |
|          Swift           |    5.0     |
|           Yarn           |    5.0     |

## 初期設定

### 必要なツール

| ツール名 | 目安となるバージョン |
| :------: | :------------------: |
|  Xcode   |        12.5.1        |
| xcpretty |        0.3.0         |
| Node.js  |      14.*, 16.*      |
|   Yarn   |         1.*          |

バージョンが異なる場合、動作しない場合があります。

### xcprettyのインストール
Stationのクリア判定に[xcpretty](https://github.com/xcpretty/xcpretty)というライブラリを使用します。
以下のコマンドで`xcpretty`をインストールしてください。

```shell
$ gem install xcpretty
```

`gem`コマンドの実行でエラーが出る場合は、[Homebrew](https://brew.sh/index_ja)やRubyの設定を確認し、修正してください。

### 必要なツールがインストール済みの場合

次の手順で取り組み始めてください。

####  `ios-stations`リポジトリのFork

画面右上にあるForkより [iOS Railway](https://github.com/SuguruOoki/ios-stations)のリポジトリを自分のアカウントにForkしてください。

#### `ios-stations`リポジトリのクローン

作成したリポジトリを作業するディレクトリにクローンしましょう。

* Terminal.app(iTerm2などでも良い)


で作業するディレクトリを開き、次のコマンドでForkしたiOS　Railwayのリポジトリをローカルにクローンしてください。


```shell
git clone https://github.com/[GitHubのユーザー名]/ios-stations.git
```

SSHでクローンを行う場合には、次のようになります

```
git clone git@github.com:[GitHubのユーザー名]/ios-stations.git
```

#### よくわからないという方のための例

GitHubのIDがSuguruOokiだとしたら、例としては次のようになります。

```
git@github.com:SuguruOoki/ios-stations.git
```

### 初期設定

#### 1. Homebrew のインストール

Terminal.app を開き、次のコマンドをコピーアンドペーストで実行してください。

```shell
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)
```

すでにインストール済みの方は、この手順を飛ばしてください。
インストールされたかどうかを確認するには、Terminal.app を開いて

```shell
brew -v
```

を実行してください。インストール済みであれば次のような表示になるはずです。

![スクリーンショット 2021-04-25 15 42 19](https://user-images.githubusercontent.com/16362021/115983568-eba85d80-a5dc-11eb-9e1a-49462edc2d46.png)

何か起こった際には次の公式サイトを確認してください。

https://brew.sh/index_ja

#### 2. Node.js のインストール

Homebrew を使って、 Node.js をインストールします。
Terminal.app を開き、次のコマンドをコピーアンドペーストで実行してください。

```shell
brew install node
```

インストールされたかどうかを確認するには、Terminal.app を開いて

```shell
node -v
```

を実行してください。インストール済みであれば次のような表示になるはずです。

![スクリーンショット 2021-04-25 16 18 23](https://user-images.githubusercontent.com/16362021/115984382-deda3880-a5e1-11eb-9da3-97c71ad5863b.png)

v から先は、インストールしたバージョンが表示されるため、上記画像の表示と全く同じバージョンでなくても大丈夫です。
本当は Node.js のバージョン管理ツールである `n` や `nodebrew` などのツールを入れた方が実践的ですが、パスの修正などができないとトラブルが起きた時に何もわからなくなるので、わからないうちはお勧めしません。
一旦素直に Homebrew で直接 Node.js の最新版をインストールしておきましょう。

#### 3. Yarn のインストール

Terminal.app を開き、次のコマンドをコピーアンドペーストで実行してください。

```shell
brew install yarn
```

インストールされたかどうかを確認するには、Terminal.app を開いて

```shell
yarn -v
```

を実行してください。インストール済みであれば次のような表示になるはずです。

![スクリーンショット 2021-04-25 15 44 21](https://user-images.githubusercontent.com/16362021/115983603-28745480-a5dd-11eb-9636-bdf4d77ab796.png)

### Yarn による環境設定の実行

```shell
yarn install
```

こちらでTechTrainのログインを求められますので、メールアドレスとパスワードを入れてログインしましょう。
GitHubでサインアップした方は、[こちら](https://techbowl.co.jp/techtrain/resetpassword)からパスワードの再発行より、パスワードを発行して、そのパスワードでログインしてください。

Station の問題は、[TechTrain の画面](https://techbowl.co.jp/techtrain/mypage/railway/4)で確認してください。

## 自分のリポジトリの状態を最新の TechBowl-japan/ios-stations と合わせる

Forkしたリポジトリは、Fork元のリポジトリの状態を自動的に反映してくれません。
Stationの問題やエラーの修正などがなされておらず、自分で更新をする必要があります。
何かエラーが出た、または運営から親リポジトリを更新してくださいと伝えられた際には、こちらを試してみてください。

### 準備

```shell
# こちらは、自分でクローンした[GitHubユーザー名]/ios-stationsの作業ディレクトリを前提としてコマンドを用意しています。
# 自分が何か変更した内容があれば、 stash した後に実行してください。
git remote add upstream git@github.com:TechBowl-japan/ios-stations.git
git fetch upstream
```

これらのコマンドを実行後にうまくいっていれば、次のような表示が含まれています。

```shell
git branch -a ←このコマンドを実行

* master
  remotes/origin/HEAD -> origin/main
  remotes/origin/main
  remotes/upstream/main ←こちらのような upstream という文字が含まれた表示の行があれば成功です。
```

こちらで自分のリポジトリを TechBowl-japan/ios-stations の最新の状態と合わせるための準備は終了です。

### 自分のリポジトリの状態を最新に更新

```shell
# 自分の変更の状態を stash した上で次のコマンドを実行してください。

# ↓main ブランチに移動するコマンド
git checkout main

# ↓ TechBowl-japan/ios-stations の最新の状態をオンラインから取得
git fetch upstream

# ↓ 最新の状態を自分のリポジトリに入れてローカルの状態も最新へ
git merge upstream/main
git push
```

## 問題が起こったら（トラブルシューティング）

### テストの実行について
クリア判定のテスト実行については、PCの性能にもよりますが通常1分以内に終わります。

もし数分以上待ってもテストの実行が終わらない場合は、なんらかのキャッシュやプロセスが影響している可能性があるため、PCを再起動するといった対応を行ってください。
