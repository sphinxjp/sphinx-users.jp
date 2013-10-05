作成したテーマを適用する
===========================
作成したオリジナルテーマをドキュメントで利用する場合には、2つの方法があります。

* Sphinxをインストールしたディレクトリ内の\ ``sphinx/themes``\ 以下に、オリジナルテーマのディレクトリを配置する。
* 任意の場所に配置し、\ ``conf.py``\ の\ ``template_path``\ でパスを指定する。

どちらの方法を利用する場合にも、\ ``conf.py``\ の\ ``html_theme``\ にテーマ名を指定します。

.. code-block:: python

  # The theme to use for HTML and HTML Help pages.  Major themes that come with
  # Sphinx are currently 'default' and 'sphinxdoc'.
  html_theme = 'mytheme'

  # Add any paths that contain custom themes here, relative to this directory.
  # プロジェクト内のconf.pyと同じディレクトリに配置する場合
  html_theme_path = ['.']

  # Sphinxのインストールディレクトリにテーマを配置する場合は指定する必要はない
  #html_theme_path = []


