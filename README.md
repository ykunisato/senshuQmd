# senshuQmd

<img src="style-guide/senshuQmd.png" align="right" alt="senshuQmd" width="160" />

こちらは専修大学人間科学部心理学科での卒業論文・修士論文作成用のQuartoテンプレートです。まだ完成品というわけでなく，おそらく色々と不具合もあるのではないかと思います。不具合があれば，Issuesか国里愛彦(専修大学)に報告ください（口頭，メールフォーム，メール，Xなど，どこからでも構いません）。

本Quartoテンプレートの引用文献処理には，[biblatex-jpa](https://github.com/sbtseiji/biblatex-jpa)を使っています[詳細はこちら](_extensions/senshu/README.md)。

## テンプレートの使用法（新規プロジェクトとして使う）

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

ダウンロードされる主なファイルは以下の通りです。

- `paper.qmd`：執筆用のQuartoファイル
- `bibliography.bib`：引用文献リスト
- `figures/`：図の保存先
- `_extensions/senshu/`：本テンプレートの書式定義（ユーザは編集不要）

## 既存プロジェクトに書式だけを追加する

既にQuartoプロジェクトがあり，`senshu-pdf`／`senshu-docx`の書式だけを追加したい場合は以下を実行ください。

```bash
quarto add ykunisato/senshuQmd
```

その上で，自分のqmdファイルのYAMLに以下を記載することで本書式が利用できます。

```yaml
format: senshu-pdf
```

## 使用法

`paper.qmd`を開いて，Renderをクリックください。専修大学人間科学部心理学科のフォーマットでPDFが出力されます。

## Word形式での出力

PDFで十分なのですが，どうしてもWordがほしい場合もあるかもしれません。本テンプレートには`senshu-docx`書式が同梱されているため，以下のいずれかでWord出力ができます（PDFほど美しくはありませんが，そこそこ整ったものが出力されます。手直しは必要です）。

Terminalから:

```bash
quarto render paper.qmd --to senshu-docx
```

または，qmdのYAMLで`format`を以下のように書き換えてRenderしてください。

```yaml
format: senshu-docx
```

PDFとWordの両方を一度に出力したい場合は以下のように記載します。

```yaml
format:
  senshu-pdf: default
  senshu-docx: default
```
