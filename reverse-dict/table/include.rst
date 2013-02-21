.. index:: csv-table; file, csv-table; url

外部にあるcsvファイルからデータを読み込む
-----------------------------------------------------------------

``file`` と ``url`` を使うことで、ファイルシステムあるいはインターネッ
ト上のCSVファイルを読み込んで ``csv-table`` として記述できます。

ただし、これはセキュリティホールになる可能性があるため、
``file_insertion_enabled`` で無効化されている場合があります。無効化するに
は ``--file-insertion-enabled=disable`` を指定します。

file
    ローカルのファイルシステムにあるcsvファイルを指定する
url
    インターネット上にあるcsvファイルを指定する
encoding
    文字コードを指定する

.. code-block:: rst

  .. csv-table:: 外部ファイル読み込みサンプル
     :file: sample.csv
     :encoding: euc-jp
     :header-rows: 1
  

適用例
~~~~~~~~~~~

sample.csvの中身は以下のようなcsvファイルです。実際にはEUC-JP-UNIXで記
述していますが、 ``encoding`` により、きちんと読み込めています。
``encoding`` を指定しないと、 ``Unable to decode input data.`` という
エラーが出ます。

::

  "header","foo","bar"
  "これはEUC-JP","で書いた","CSVファイルだったりします"

.. csv-table:: 外部ファイル読み込みサンプル
   :file: sample.csv
   :encoding: euc-jp
   :header-rows: 1
