.. _images-numbering:

図に番号を自動で振り、参照したい
--------------------------------------------

図に自動で番号を割り振って、文中からその番号で参照したい、ということが
あります。(例: 図1では…) しかし残念ながら現段階では標準では使えず、
numfig拡張を使って実現できます。


numfig拡張を使う
++++++++++++++++++

`numfig拡張 <https://bitbucket.org/arjones6/sphinx-numfig/wiki/Home>`_
を使います。

まずは以下の手順でインストールします。

.. code-block:: bash

   % pip install sphinx-numfig

conf.py に以下のように書き加えます。

.. code-block:: python

   # extensionsに追加
   extensions = ['sphinx_numfig']

この状態で以下のように記述します。

.. code-block:: rst

   :page:`example-fig` ページの :num:`図 #example-fig` は :ref:`example-fig` というラベルの図です。

   .. _example-fig:

   .. figure:: example_figure.png

       例のための図

roleは以下の三つが使えるようになります。

num
  図番号への参照。 #refターゲット と書く。
ref
  ラベルへの参照
page
  ページへの参照。これはLaTeX出力の場合だけ使われる。

この他conf.pyで図番号の表示やデフォルトの文言なども設定できますので、
前述のnumfig拡張のURLから参照してください。

