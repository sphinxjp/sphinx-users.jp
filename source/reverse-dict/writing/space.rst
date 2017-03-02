インラインマークアップ前後にスペースを入れたくない
====================================================

Sphinxが使っているreSturucturedTextでは、インラインマークアップの前後にスペースが必要でした。スペースなしでは単語の区切りを認識しないため、インラインマークアップが無視されます。

.. code-block:: rst
   :caption: OKな例

   SphinxでHTMLファイルをビルドするときは ``make html`` とタイプします。

.. code-block:: rst
   :caption: NGな例

   SphinxでHTMLファイルをビルドするときは``make html``とタイプします。

このスペースを除外する方法がいくつかあります。

エスケープ + スペース
---------------------

前後のスペースの前にバックスラッシュを置いて、スペースをエスケープします。

.. code-block:: rst
   :caption: OKな例

   SphinxでHTMLファイルをビルドするときは\ ``make html``\ とタイプします。

Docutilsの\ ``character-level-inline-markup``\ オプション
---------------------------------------------------------

`Python.jp <http://www.python.jp/>`_\ の世話人をしてくださっている石本さんがパッチを送り、マージしてもらった `オプション <http://docutils.sourceforge.net/docs/user/config.html#character-level-inline-markup>`_ がDocutilsの0.13に入りました。
このオプションを有効化すると、スペースなしでもインラインマークアップが解釈されるようになります。

Sphinxから使うには、 ``docutils.conf`` というファイルを作り、 ``conf.py`` と同じ場所において普段通り実行します。

.. code-block:: ini
   :caption: docutils.conf

   [restructuredtext parser]

   character_level_inline_markup: yes

これで、最初に紹介したNGの例のときに正しく解釈されるようになります。ただし、注意点としては、多くのエディタなどがこの形式をサポートしていない点です。下記のハイライトもそうですが、多くのツールがまだ解釈できないため、ソースのハイライトがおかしくなることがあります。

.. code-block:: rst
   :caption: NGだったけどOKになった例

   SphinxでHTMLファイルをビルドするときは``make html``とタイプします。


参考
---------------

この項目はreSturucturedTextを書く際の空白を入れたくない場合に関するものです。

:ref:`japanesesupport` に書かれているjapanesesupportを使うと、HTML出力時に不自然なスペースを削除できます。
