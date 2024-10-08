
HTMLテーマに独自のCSS/JSファイルを読み込ませてデザイン調整等したい
--------------------------------------------------------------------

1. _static/custom.css を用意します(ファイル名は任意)。
2. conf.py に以下の行を追加します

   .. code-block:: python

      html_css_files = ['custom.css']

.. note::

   Sphinx-1.8 以前は ``setup()`` 関数を定義し、その中で ``add_stylesheet()`` を呼び出していましたが、
   現在では設定項目 ``html_css_files`` を使って設定します。
   https://www.sphinx-doc.org/ja/master/usage/configuration.html#confval-html_css_files

これでcustom.cssもHTMLから読み込まれるようになります。

同様に ``app_add_javascript('custom.js')`` を使えばJSファイルも追加できます。

Sphinx標準テーマであれば、add_stylesheetやadd_javascriptを使ってcssやjsを追加することが出来ます。

.. seealso:: http://www.sphinx-doc.org/ja/stable/extdev/appapi.html#sphinx.application.Sphinx.add_stylesheet

.. note::

   この仕組みはlayout.htmlに以下のような記述がある場合に動作します。Sphinx標準のテーマの例:

   .. code-block:: css+jinja

       {%- for cssfile in css_files %}
       <link rel="stylesheet" href="{{ pathto(cssfile, 1) }}" type="text/css" />
       {%- endfor %}

   https://bitbucket.org/birkenfeld/sphinx/src/348224ae1fd5/sphinx/themes/basic/layout.html#cl-105
