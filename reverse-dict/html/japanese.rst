.. index:: japanesesupport, conf.py;japanesesupport, extensions;japanesesupport

不自然な空白が表示される
------------------------------------------

日本語文章を書いているとHTMLで出力した際に不自然な空白が文章中のところ
どころに出力される場合があります。これは、段落中で改行するとその改行が
空白文字として出力されてしまうからです。

この問題を解決するには日本語拡張を使います。

1. `ここから <http://dl.dropbox.com/u/218108/files/japanesesupport.py>`_
   ``japanesesupport.py`` をダウンロードします。

2. ダウンロードした ``japanesesupport.py`` を ``conf.py`` を置いてある場所に移動
   させます。(sourceとbuildを分割している場合はsourceの下、していない
   場合はMakefileと同じ場所)

3. ``conf.py`` を以下のように書き換えます。

   .. code-block:: python

      sys.path.insert(0, os.path.abspath('.')) # コメントを外します
      extensions = ['japanesesupport', 'その他の拡張'] # 加えます


