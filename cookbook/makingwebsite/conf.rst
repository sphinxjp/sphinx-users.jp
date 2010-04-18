theme.confの作成
=============================
\ `theme.conf`\ は、テーマの設定ファイルです。

以下のようなINI形式で記述します。 ::

   [theme]
   inherit = basic
   stylesheet = main.css
   pygments_style = sphinx

   [option]
   nosidebar = false

themeセクション
--------------------
themeセクション(\ ``[theme]``\ )では、以下の項目を設定します。

inherit
   継承するテーマ
stylesheet
   適用するスタイルシート
pygments_style
   ソースコードのハイライトスタイル

inherit
^^^^^^^^^^^^^^
継承元のテーマを指定します。テーマを継承しない場合は \ ``none``\  を指定します。

Sphinxインストール時から利用できるテーマは、以下の4つです。

* basic
* default
* sphinxdoc
* traditional

他のテーマを継承すると、ドキュメント内に見つからないテンプレートがあった場合に、継承元のテーマのテンプレートが使用される様になります。

例えば、"basic"テーマは、他の3つのテーマのベースになっているテーマで、標準的なテンプレート、サイドバーやナビゲーション(リレーションバー)が組み込まれています。
そのため、"basic"テーマを継承しておけばオリジナルテーマを作成する場合でも、全てのテンプレートを自前で作成する必要はありません。

stylesheet
^^^^^^^^^^^^^
ドキュメントがHTMLとして出力された際に参照されるCSSファイルを設定します。

\ `theme.conf`\ 内では、1つのスタイルシートだけ指定します。そのため、複数のスタイルシートを適用する必要がある場合には、テンプレート側で指定するか、CSSファイル内でインポートする必要があります。

pygments_style
^^^^^^^^^^^^^^^^
ドキュメント内にソースコードを記述する場合のハイライトに使用する、\ `Pygments <http://pygments.org/>`_\ スタイル名を指定します。
デフォルトのスタイルは"sphinx"が使用されます。

Pygmentsに組込まれているスタイルは、以下の様に確認します。

.. code-block:: python

   >>> from pygments.styles import STYLE_MAP
   >>> STYLE_MAP.keys()
   ['manni', 'perldoc', 'borland', 'colorful', 'default', 'murphy', 'vs', 'trac',
   'tango', 'fruity', 'autumn', 'bw', 'emacs', 'pastie', 'friendly', 'native']

optionセクション
-----------------
テーマの見た目を設定するための"変数 = デフォルト値"のペアを指定します。
ここで設定したオプションは、テーマ利用者側が"conf.py"の\ ``html_theme_option``\ の項目で設定する事ができます。

今回、作成する\ ``mytheme``\ では、以下の様な\ `theme.conf`\ を作成しました。 ::

  [theme]
  inherit = basic
  stylesheet = main.css
  pygments_style = sphinx

  [options]
  linkcolor = blue

\` theme.conf`\ をしたら、以降は実際にテーマを作成していきます。\ :doc:`template`\ に進みましょう!
