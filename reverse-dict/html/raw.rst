.. index:: raw

htmlを直接書きたい
---------------------------------------------------

rawディレクティブを使うと、HTMLを直接記述できます。

ここでは一例としてcheckboxを使ってみます。

.. code-block:: rst

  .. raw:: html
  
     <input type="checkbox" value="true">チェックしてね</input>

テーブルに埋め込みたい時などはreplceを使うと便利です。注意点としては、
replaceで別ディレクティブを使うときは、replaceを記述するとエラーになり
ます。

.. code-block:: rst

  .. |check| raw:: html
  
     <input type="checkbox" value="true">済</input>
  
その他、html埋込みは例えばyoutubeの動画埋め込みなどにも使えます。

適用例
~~~~~~~~~~~~~~~~~~

通常例
+++++++++++++++++++

.. raw:: html

   <input type="checkbox" value="true">チェックしてね</input>

replaceを使った例
+++++++++++++++++++

.. |check| raw:: html

   <input type="checkbox" value="true">済</input>


================== ========================================
 Todo              チェック
================== ========================================
牛乳を買う           |check|
はがきを出す         |check|
切符を買う           |check|
================== ========================================

Youtube埋め込み
+++++++++++++++++++

.. raw:: html

  <object width="425" height="344">
  <param name="movie" value="http://www.youtube.com/v/u1zgFlCw8Aw?fs=1"</param>
  <param name="allowFullScreen" value="true"></param>
  <param name="allowScriptAccess" value="always"></param>
  <embed src="http://www.youtube.com/v/u1zgFlCw8Aw?fs=1"
    type="application/x-shockwave-flash"
    allowfullscreen="true"
    allowscriptaccess="always"
    width="425" height="344">
  </embed>
  </object>
