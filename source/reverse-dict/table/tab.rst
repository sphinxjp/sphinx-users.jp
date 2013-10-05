.. index:: csv-table; encoding, csv-table; delim

csv-tableでタブや空白を区切り文字に使いたい
------------------------------------------------------------------------

``csv-table`` で","ではなくタブや空白を区切り文字として使う場合には、
``delim`` オプションを使います。

空白の場合
   spaceかU+0020
タブの場合
   tab
それ以外の場合
   U+形式(Unicode形式)で指定する

ただし、Docutil 0.7では ``header`` では ``delim`` オプションが "," に固
定されています。ヘッダをつけたい場合は ``header-rows`` を使う方が良いで
しょう。

また、タブ区切りの場合はrstファイルに書くのではなく、 ``file`` を使って
外部ファイルから読み込む必要があります。

.. code-block:: rst

  .. csv-table:: 空白区切りの例
     :delim: space
     :header-rows: 1
  
     a b c
     d e f
    
適用例
~~~~~~

.. csv-table:: 空白区切りの例
   :delim: space
   :header-rows: 1

   a b c
   d e f


