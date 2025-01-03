# senshuQmd

<img src="style-guide/senshuQmd.png" align="right" alt="senshuQmd" width="160" />

こちらは専修大学人間科学部心理学科での卒業論文・修士論文作成用のQuartoテンプレートです。まだ完成品というわけでなく，おそらく色々と不具合もあるのではないかと思います。不具合があれば，Issuesか国里愛彦(専修大学)に報告ください（口頭，メールフォーム，メール，Xなど，どこからでも構いません）。

本Quartoテンプレートの引用文献処理には，[biblatex-jpa](https://github.com/sbtseiji/biblatex-jpa)を使っています[詳細はこちら](template/README.md)。

## テンプレートの使用法

Terminal（RStudioの場合）で以下のコマンドを使ってインストールします（適宜cdコマンドを使ってこのテンプレートを置きたい場所に移動してから実行ください）。

```bash
quarto use template ykunisato/senshuQmd
```

上記のコマンドを行うと以下の質問がなされます。最初の質問はYesと回答します。２つ目の質問はディレクトリを作ってその中にテンプレートをいれるかどうかを聞いています。既にテンプレートをいれるディレクトリがあり，そこに移動している場合はNoと回答します。Noと回答したらそのままテンプレートがダウンロードされて，３つ目の質問はないです。ディレクトリを新規に作る場合は２つ目の質問でYesとします。すると，３つ目の質問でディレクトリ名を聞かれますので，作りたいディレクトリ名を記入ください。

Quarto templates may execute code when documents are rendered. If you do not trust the authors of the template, we recommend that you do not install or 
use the template.

- ? Do you trust the authors of this template (Y/n) › 
- ? Create a subdirectory for template? (Y/n) › 
- ? Directory name: › 

なお，quarto use templateを使うと，senshuQmd.Rprojが作られます。

## 使用法

"paper.qmd"を開いて，Renderをクリックください。専修大学人間科学部心理学科のフォーマットでPDFが出力されます。

## その他

PDFで十分なのですが，どうしてもWordがほしい場合もあるかもしれません。その場合は，Qmdファイルのあるフォルダ内に移動した上で，Terminalで以下のコマンドを実施して，Word形式で出力できます。PDFほど美しくはないけど，そこそこ整ったものが出力されます（手直しは必要です）。

```
pandoc paper2.tex -o paper2.docx --toc --reference-doc=template/senshu.docx --number-sections -V lang=ja-JP --pdf-engine=lualatex
```

