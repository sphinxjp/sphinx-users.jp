.. index:: only, ディレクティブ; only

.. index::
   single: 表示; 特定の時だけコンテンツを表示する

.. _writing-only:

特定の時だけコンテンツを表示させたい
------------------------------------------

``only`` を使います。 ``only`` は引数の式が ``True`` の時に続くコンテン
ツを表示します。式はタグで書きます。タグは ``-t`` オプションか
``conf.py`` で指定します。特に出力形式(builder)は全てタグです。

この式では ``html and (latex or draft)`` のように ``and`` や ``or`` な
どの演算子を使えます。

.. code-block:: rst

  .. only:: html or singlehtml
  
     出力がhtmlかsinglehtmlの時だけこの内容が表示されます。

適用例
~~~~~~~~

.. only:: html or singlehtml
  
   出力がhtmlかsinglehtmlの時だけこの内容が表示されます。

参照
~~~~~~~

- :ref:`ifconfig拡張<writing-ifconfig>` 
