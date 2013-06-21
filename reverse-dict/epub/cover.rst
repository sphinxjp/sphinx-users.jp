.. index:: conf.py;epub_cover

カバー画像を設定したい
----------------------------

sphinx 1.1からはepub_coverをconf.pyで設定することでカバー画像を指定でき
ます。

設定は画像ファイルとHTMLテンプレートファイルのタプルです。テンプレート
ファイルが設定されていない場合、画像だけとなります。なにも設定しないと、
カバーが出力されません。

.. code-block:: python

  epub_cover = ('_static/cover.png', 'epub-cover.html')
  epub_cover = ('_static/cover.png', '')  # HTMLなし
  epub_cover = ()  # カバーなし

初期設定はカバーなしです。


.. versionchanged:: 1.1
   ``epub_cover`` は1.1から追加されました。





