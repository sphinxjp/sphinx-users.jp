.. index:: todo, extensions; todo, conf.py; todo

TODOを記録しておきたい
----------------------

``conf.py`` に

.. code-block:: python

  extensions = ['sphinx.ext.todo' ]
  
  [extensions]
  todo_include_todos=True
  
とtodo拡張を加えておき、TODOを書いておきたい場所に

.. code-block:: rst

  .. todo:: ブロック図を書く

と書くと、TODOがわかりやすく表示されるようになります。

また、

.. code-block:: rst

  .. todolist:: 

とすると、全部のrstファイルからTODOを探してきて、一覧表示してくれます。
TODOを定義したところに飛べたりしますので便利です。index.rstなど目立つと
ころに書いておきましょう。

下書き時にはtodolistを使って書くべき項目を分かるようにしておき、リリー
ス時には ``conf.py`` で ``todo_include_todos = False`` としてTODOが表示
されないようにすると良いでしょう。

~~~~~~~~~
適用例
~~~~~~~~~

.. figure:: todolist-sample.*

