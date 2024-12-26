# senshuQmd

こちらは専修大学人間科学部心理学科での卒業論文・修士論文作成用のQuartoテンプレートです。

## 新規にプロジェクを作成する場合のインストール法

新規にプロジェクを作成する場合は，以下のようにインストールします。もし，R上で行う場合は，quartoパッケージを使って以下のようにインストールします。

```r
library(quarto)
quarto_use_template("ykunisato/senshuQmd")
```

Terminalなどでインストールする場合は，以下のようにインストールします。

```bash
quarto use template ykunisato/senshuQmd
```

## 既存のプロジェクに作成する場合のインストール法

既存のプロジェクに作成する場合は，以下のようにインストールします。もし，R上で行う場合は，quartoパッケージを使って以下のようにインストールします。

```r
library(quarto)
quarto_add("ykunisato/senshuQmd")
```

Terminalなどでインストールする場合は，以下のようにインストールします。

```bash
quarto add ykunisato/senshuQmd
```


## 使用法

"paper.qmd"を開いて，Renderをクリックください。専修大学人間科学部心理学科のフォーマットでPDFが出力されます。

## その他

PDFで十分なのですが，どうしてもWordがほしい場合もあるかもしれません。その場合は，以下のコマンドを実施して，Word形式で出力できます。

```
pandoc paper2.tex -o paper2.docx --toc --reference-doc=template/senshu.docx --number-sections -V lang=ja-JP --pdf-engine=lualatex
```

