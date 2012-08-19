Webサイトを作ろう
====================
Sphinxはテーマという形で、ドキュメントの見た目を変更することができます。ドキュメントのレイアウト、デザインは自由に編集することができるのでドキュメントだけではなくWebサイトを作ることもできます。ここでは、テーマを作成してかんたんなWebサイトを作っていきます。

.. note::

   既存のテーマを多少変更したいのであれば、オリジナルのHTMLテーマを作る以外にも方法があります。
   `HTMLテーマのサポート <http://sphinx-users.jp/doc11/theming.html#id1>`_ の ``html_theme_options`` や
   :doc:`../../reverse-dict/html/custom-css-js` を参照して下さい。

テーマの変更(オリジナルテーマの作成)
------------------------------------------
オリジナルのテーマを作成するにあたって、必要な準備をします。

.. toctree::
   :maxdepth: 2

   theme
   prepare
   conf

オリジナルのレイアウトを作成する
---------------------------------
必要な準備が整ったら、実際にオリジナルのテーマを作成します。Sphinxのテーマは、\ `Jinja <http://jinja.pocoo.org/2/documentation/>`_ HTMLテンプレート、CSS、必要に応じてJavaScriptを使用して作成することができます。

.. toctree::
   :maxdepth: 2

   template
   css

作成したテーマを配置する
-------------------------
オリジナルテーマが完成したら、自分のプロジェクトに配置して使ってみましょう。

.. toctree::
   :maxdepth: 2

   application
