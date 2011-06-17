.. index:: figure, directive;figure

図にキャプションをつけたい
--------------------------

``image`` は単に画像を貼るだけですが、 ``figure`` を使うことで画像の説
明(キャプション)も定義できます。

:: 

  .. figure:: ファイル名
     :scale: 40%
     :alt: Alternate Text (これはキャプションではなくalt属性です)
     
     一行あけてここに書いたものがキャプションになります。


しかし、HTMLに書きだした場合

:: 

  <p class="caption">


となるにも関わらず、captionというCSSが定義されていないので、普通の文章と同じようになってしまいます。


適用例
~~~~~~

.. figure:: ../img/sphinx.png
   :scale: 40%
   :alt: Alternate Text (これはキャプションではなくalt属性です)
   
   一行あけてここに書いたものがキャプションになります。
