.. index:: strike


取り消し線を引きたい
------------------------

Sphinxには取り消し線(sタグ)をマークアップする記法がありません。

取り消し線を使う場合には、新しくロールを定義し、それをクラス名としたスタイルシートを用意します。

追加するロール::

 .. role:: strike

追加するスタイルシート::

  .strike {
    text-decoration: line-through;
  }

rst内の表記::

  ここに :strike:`取り消し線` を引きます

参照： :doc:`custom-css-js`

~~~~~~~
適用例
~~~~~~~

.. raw:: html

  <style type="text/css">
    <!--
      .strike {
         text-decoration: line-through;
      }
    -->
  </style>

.. role:: strike

ここに :strike:`取り消し線` を引きます
