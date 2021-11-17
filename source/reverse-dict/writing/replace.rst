.. index::
   single: replace
   single: ロール（role）; replace
   single: 用語; 用語を定義する

用語を定義したい
---------------------------

``replace`` を使います。

.. code-block:: rst

   .. |ex1| replace:: 例1

   使うときは |ex1| と書きます。

.. |ex1| replace:: 例1 

こう定義しておくと次からは|ex1|(実際には両端にスペースが必要)とすると、
「 |ex1| 」と自動的に展開してくれます。つまり、あとからこの用語名を変え
たい、と思ったときにはこの定義だけを変えれば勝手に全部入れ替えてくれる、
というわけです。

ただし、複数のrstファイルに分けている場合には使えないので、別のファイル
(例えばdefinition.txt)に ``replace`` を書いておき、

.. code-block:: rst

  .. include:: definition.txt

と各rstファイルの先頭に書いておきます。この時、.rstではなく.txtなど他の
拡張子のファイルに書いていることに注意してください。そうしない場合、
Sphinxがどこからも参照されてない.rstファイルがあるという警告が出ます。

Sphinxのversion 1.0以降であれば、 ``rst_prolog`` を使う方法もあります。
``rst_prolog`` とは各rstファイルの先頭に追加するものを記載する変数です。
これを利用する場合、 ``conf.py`` に以下のように書きます。

.. code-block:: python

  rst_prolog= u"""
  .. |ex1| replace:: 例1
  """

あるいは、 ``include`` と組み合わせて

.. code-block:: python

  rst_prolog= u"""
  .. include:: definition.txt
  """

と書くこともできます。

