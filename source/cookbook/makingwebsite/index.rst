Webサイトを作ろう(オリジナルテーマの作成)
==========================================
Sphinxはテーマという形で、ドキュメントの見た目を変更することができます。ドキュメントのレイアウト、デザインは自由に編集することができるのでドキュメントだけではなくWebサイトを作ることもできます。ここでは、テーマを作成してかんたんなWebサイトを作っていきます。

.. note::

   Sphinxには標準テーマとして多数のテーマが同梱されています。
   オリジナルのテーマを変更する前に :doc:`../changetheme/index` を参照してください。

   また、既存のテーマを多少変更したい場合は、
   `HTMLテーマのサポート <http://www.sphinx-doc.org/ja/stable/theming.html#id1>`_ の ``html_theme_options`` や
   :doc:`../../reverse-dict/html/custom-css-js` を参照して下さい。

準備
-----
オリジナルのテーマを作成するにあたって、必要な準備をします。

.. toctree::
   :maxdepth: 2

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
