.. _directives:

====================
ディレクティブの紹介
====================

このドキュメントではreStructuredTextパーサで実装されているディレクティブについて説明します。

ディレクティブは下記の構文です。::

   +-------+---------------------------------------------------+
   | ".. " | ディレクティブタイプ "::" ディレクティブブロック  |
   +-------+                                                   |
           |                                                   |
           +---------------------------------------------------+

ディレクティブは明示的なマークアップ（二つのピリオドとスペース）からはじめ、ディレクティブタイプと二つのコロン（まとめて"ディレクティブマーカー"）が続きます。
ディレクティブブロックは、ディレクティブマーカーのすぐ後からはじまり、その後の全てのインデント行が含まれます。
ディレクティブブロックは、引数、オプション（フィールドリスト）、そしてコンテンツ
に分けられ、そのいずれもが現れるかもしれません。
構文の詳細は、 `reStructuredText Markup Specification`_ のDirectives sectionを参照してください。


警告
====

警告の仕様
----------

:Directive タイプ:  "attention", "caution", "danger", "error", "hint", "important", "note", "tip", "warning", "admonition"
:Doctree 要素:  attention, caution, danger, error, hint, important, note, tip, warning, admonition, title
:Directive 引数:  無し
:Directive オプション:  指定不可
:Directive 本文: 本文要素として解釈されます


警告は本文要素のどこにでも現れることができる特に際立った"topics"です。
それは、任意の本文要素を含んでいます。慣例的に、警告はドキュメント内のオフセットブロックとして、往々にして外郭や影を付けて。タイトルに一致する警告タイプとともに表示さます。例えば::

  .. DANGER::
     Beware killer rabbits!

このディレクティブは、下記のように表示されるかもしれません。::

  +------------------------+
  |        !DANGER!        |
  |                        |
  | Beware killer rabbits! |
  +------------------------+


下記の警告ディレクティブが実装されています。

    * attention
    * caution
    * danger
    * error
    * hint
    * important
    * note
    * tip
    * warning

ディレクティブインディケータのすぐ後のテキスト（同じ行、または、インデントされた次の行）は、ディレクティブブロックとして解釈され、普通の本文要素のために解析されます。例えば、下記の "note" 警告ディレクティブは、1つのパラグラフと2つのリストアイテムからなる箇条書きが含まれています。::

  .. note:: This is a note admonition.
     This is the second line of the first paragraph.
 
     - The note contains all indented body elements
       following.
     - It includes this bullet list.


一般的な警告
------------

:Directive タイプ:  "admonition"
:Doctree 要素:  admonition, title
:Directive 引数:  1 つ, 必須 (警告タイトル)
:Directive オプション:  指定可能
:Directive 本文:  本文要素として解釈されます

これは一般的な、警告の記述です。タイトルは著者が欲している何かかもしれません。

著者が供給したタイトルは、有効な識別子に変換された後の "classes" 属性値としても使用されます。

例えば、この警告は::

  .. admonition:: And, by the way...

     You can make up your own admonition too.

次のドキュメントツリー（pseudo-XML）になります。

  <document source="test data">
      <admonition classes="admonition-and-by-the-way">
          <title>
              And, by the way...
          <paragraph>
              You can make up your own admonition too.


次のオプションを使用できます。

:class: テキスト

  算出された "classes" 属性値を上書します。class ディレクティブを参照してください。


テーブル
========

正式なテーブルには reStructuredText シンタックスが提供するよりも多くの構造が必要です。テーブルはテーブルディレクティブによって与えられるかもしれません。時々、reStructuredText テーブルは書き込むことが不便であるか、標準フォーマットのテーブルデータは容易に利用可能です。csv-table ディレクティブは CSV データをサポートします。


テーブル
--------

:Directive タイプ:  "table"
:Doctree 要素:  table
:Directive 引数:  1つ, 任意(テーブルタイトル)
:Directive オプション:  指定可能.
:Directive 本文:  標準のreStructuredTextテーブル

(New in Docutils 0.3.1)

"table" ディレクティブは題が付けられたテーブルの作成と、タイトルとテーブルの関連付けに使用されます。::

  .. table:: Truth table for "not"

     =====  =====
       A    not A
     =====  =====
     False  True
     True   False
     =====  =====


下記のオプションを使用することができます。

:class: テキスト

  テーブル要素に "classes" 属性値をセットします。class ディレクティブを参照してください。

CSV テーブル
------------

:Directive タイプ:  "csv-table"
:Doctree 要素:  テーブル
:Directive 引数:  1つ, 任意 (テーブルタイトル)
:Directive オプション:  指定可能
:Directive 本文:  CSV (comma-separated values) テーブル

.. Warning::

  "csv-table" ディレクティブの ":file:" と ":url:" オプションはセキュリティホールになる可能性があります。これらは、 "file_insertion_enabled" ランタイムの設定により無効化できます。


(New in Docutils 0.3.4)

"csv-table" ディレクティブはCSV(comma-separated values)データからテーブルを作成する際に使用されます。データはインターナル（ドキュメントに不可欠な部分）、またはエクスターナル（分割ファイル）です。


例::

  .. csv-table:: Frozen Delights!
     :header: "Treat", "Quantity", "Description"
     :widths: 15, 10, 30
 
     "Albatross", 2.99, "On a stick!"
     "Crunchy Frog", 1.49, "If we took the bones out, it wouldn't be
     crunchy, now would it?"
     "Gannet Ripple", 1.99, "On a stick!"

ブロックマークアップとセル内のインラインマークアップはサポートされています。行の最後はセル内で見えわけられます。


制約::

    * 外部の CSV ファイルのためだけに空白区切りがサポートされています。
    * それぞれの列のカラムの番号のチェックはサポートされていません。しかしながら、このディレクティブは自動的に空エントリを追加することによって、短い列の最後へ "empty" エントリを差し込むことができないCSV ジェネレータをサポートしています。


下記のオプションを使用できます。

:class:  テキスト

  テーブル要素に "classes" 属性値をセットします。class ディレクティブを参照してください。

:widths: 整数 [, 整数...]

  カンマまたは空白の区切られたリスト。デフォルトは、等幅カラム（100%/カラム）です。

:header-rows:  整数

  テーブルヘッダーに使用する CSV データの列数です。デフォルトは 0 です。 

:stub-columns: 整数

  スタブとして使用するテーブルカラムの数（左側の列タイトル）です。デフォルトは 0 です。

:header: CSV データ

  テーブルヘッダーのための補足データです。メインの CSV データから自由にそしてヘッダー列の前に追加されます。メインの CSV データとして、同じ CSV フォーマットを使用する必要があります。

:file: 文字列 (新しい行は削除される)

  CSV データファイルへのローカルファイルシステムパスです。

:url:  文字列 (空白は削除される)

  CSV データファイへのインターネット URL 参照です。

:encoding:  テキストエンコーディングの名前

  外部 CSV データのテキストエンコーディング（ファイルまたは URL）です。デフォルトは、このドキュメントのエンコーディング（指定されている場合）です。

:delim: 文字 | "tab" | "space"

  フィールドを分割するために使用される 1 文字の文字列です。デフォルトは（カンマ）。おそらく、Unicode コードポイントとして指定されます。記法の詳細については unicode ディレクティブをみてください。

:quote: 文字

  区切り文字を含む要素をクォートするため、または、クォート文字から始める要素に使用する 1 文字の文字列です。デフォルトは " （クォート）。おそらく、Unicode コードポイントとして指定されます。記法の詳細については unicode ディレクティブをみてください。
  
:keepspace: フラグ

  意味のあるものとして、区切り文字のすぐ後の空白を扱います。デフォルトではその空白を無視します。
  
:escape: 文字

  区切り文字、または、クォート文字のエスケープに使用する 1 文字の文字列です。unicode ポイントとして指定されるでしょう。記法の詳細については unicode ディレクティブを見てください。区切り文字が、クオートが使用されていないフィールドで使用されている場合、または、クォート文字がフィールドで使用されている場合に使用されます。デフォルトは文字を二重にします。例えば、"He said, ""Hi!""" です。


リストテーブル
--------------

:Directive タイプ:  "list-table"
:Doctree 要素:  table
:Directive 引数:  1つ, 任意 (テーブルのタイトル)
:Directive オプション:  指定可能
:Directive 本文:  一定の2レベルのリスト

"list-table" ディレクティブは一定の2レベルの加除書きリストのデータからテーブルを作成するために使用されます。

"一定" は、各サブリスト（2レベルのリスト）が同じ数のリストアイテムを含まなければならないを意味します。

例::

  .. list-table:: Frozen Delights!
     :widths: 15 10 30
     :header-rows: 1
 
     * - Treat
       - Quantity
       - Description
     * - Albatross
       - 2.99
       - On a stick!
     * - Crunchy Frog
       - 1.49
       - If we took the bones out, it wouldn't be
         crunchy, now would it?
     * - Gannet Ripple
       - 1.99
       - On a stick!

下記のオプションを使用することができます。

:class: テキスト

    テーブル要素の **classes** 属性値を設定します。class ディレクティブを参照してください。

:widths: 整数 [整数...]

    相対的な列幅のカンマまたはスペース区切りのリスト。デフォルトでは等幅（100%/列数）。

:header-rows: 整数

    テーブルヘッダで使用するリストデータの行の数です。デフォルトは 0 です。

:stub-columns: 整数

    スタブとして使用するテーブル列の数です。デフォルトは 0 です。


.. _`reStructuredText Markup Specification`: http://docutils.sourceforge.net/docs/ref/rst/restructuredtext.html
