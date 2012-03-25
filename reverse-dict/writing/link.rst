.. index::
   single: link
   pair: link;inline
   pair: link;image
   

リンクを貼りたい
================

Sphinxでリンクを貼る方法はいくつかあります。

URL直書き
---------

一番シンプルな方法です。前後に半角スペース、もしくは￥+半角スペース(前後に隙間をあけたくない場合)を付けてください。

.. code-block:: rst

   詳しくは、 http://sphinx-users.jp を参照してください。

reSTのインライン構文
--------------------

一番柔軟よく使われる方法がこれです。生のHTMLではなく、自分の好きなラベルを表示させることができます。

.. code-block:: rst

   `Sphinxを知りたい方はこちらをクリック <http://sphinx-users.jp>`_

論文の参考文献のような記述法
----------------------------

外部ターゲットと呼ばれるreSTの構文です。

.. code-block:: rst

   Sphinxの詳しい情報源: SphinxJP_

   .. _SphinxJP: http://sphinx-users.jp

画像をクリックした時のリンク
----------------------------

``:target:`` オプションを使ってURLを埋め込みます。URL以外にも、Sphinx内で使えるリファレンス名(上記の ``SphinxJP_``)も使えます。

.. code-block:: rst

   .. image:: sphinx.png
      :alt: Sphinx-Users.jpのロゴ
      :target: http://sphinx-users.jp

Sphinxのドキュメント内の他のページへのリンク
--------------------------------------------

Sphinxのドキュメントへのリンクであれば、ドキュメントのファイル名(拡張子なし)を書くことでリンクを貼ることができます。

.. code-block:: rst

   くわしい使い方は :doc:`sample/index` に書かれています。
