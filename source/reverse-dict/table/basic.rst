
.. _table-header: 

テーブルのヘッダを書く
------------------------------------

csv-tableおよびlist-tableでは、オプションを指定することでヘッダを指定
したり、一つ一つのカラムの幅を指定したりできます。

オプション
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

csv-tableのオプション
++++++++++++++++++++++


widths
    ","で区切ることで各カラムの大きさを%で指定できる
header-rows
    テーブルのヘッダーとして使う行を指定する
header
    ヘッダーを本文と同じ長さのcsv形式で定義する。 ``header-rows`` とは
    別に書けます
stub-columns
    スタブ(左端にある行のタイトル)として使う列を指定します

list-tableのオプション
++++++++++++++++++++++

widths
    各カラムの大きさをスペース区切りで%で指定する
header-rows
    テーブルのヘッダーとして使う行を指定する
stub-columns
    スタブ(左端にある行のタイトル)として使う列を指定します

適用例
~~~~~~~~~~~~

CSVテーブル
++++++++++++++++++++++++++++++++++++++++++

headerを使った例です。

.. csv-table:: Frozen Delights!
   :header: "Treat", "Quantity", "Description"
   :widths: 15, 10, 30

   "Albatross", 2.99, "On a stick!"
   "Crunchy Frog", 1.49, "If we took the bones out, it wouldn't becrunchy, now would it?"
   "Gannet Ripple", 1.99, "On a stick!"

listテーブル
+++++++++++++++++++++++++++++++++++++++++++++

stub-columnsを使った例です。

.. list-table:: Frozen Delights!
   :header-rows: 0
   :stub-columns: 1

   * - Treat
     - Quantity
     - Description
   * - Crunchy Frog
     - 1.49
     - If we took the bones out, it wouldn't be
       crunchy, now would it?
