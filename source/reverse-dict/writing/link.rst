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

~~~~~~
適用例
~~~~~~

詳しくは、 http://sphinx-users.jp を参照してください。

reSTのインライン構文
--------------------

一番柔軟に利用できる方法がこれです。生のHTMLではなく、自分の好きなラベルを表示させることができます。

.. code-block:: rst

   `Sphinxを知りたい方はこちらをクリック <http://sphinx-users.jp>`__

~~~~~~
適用例
~~~~~~

  `Sphinxを知りたい方はこちらをクリック <http://sphinx-users.jp>`__

論文の参考文献のような記述法
----------------------------

外部ターゲットと呼ばれるreSTの構文です。

.. code-block:: rst

   Sphinxの詳しい情報源: SphinxJP_

   .. _SphinxJP: http://sphinx-users.jp

~~~~~~
適用例
~~~~~~

  Sphinxの詳しい情報源: SphinxJP_

  .. _SphinxJP: http://sphinx-users.jp

画像をクリックした時のリンク
----------------------------

``:target:`` オプションを使ってURLを埋め込みます。URL以外にも、Sphinx内で使えるリファレンス名(上記の ``SphinxJP_``)も使えます。

.. code-block:: rst

   .. image:: /reverse-dict/img/sphinx.png
      :alt: Sphinx-Users.jpのロゴ
      :target: http://sphinx-users.jp

~~~~~~
適用例
~~~~~~

  .. image:: /reverse-dict/img/sphinx.png
     :alt: Sphinx-Users.jpのロゴ
     :target: http://sphinx-users.jp

同じ Sphinx プロジェクト内のドキュメントへのリンク
--------------------------------------------------

同じ Sphinx プロジェクト内のドキュメントファイルパス(相対パス／絶対パス、拡張子なし)を ``:doc:`` ロールに書くことでリンクになります

.. code-block:: rst

   くわしい使い方は :doc:`../images/target.rst` に書かれています。

~~~~~~
適用例
~~~~~~

  くわしい使い方は :doc:`../images/target` に書かれています。
