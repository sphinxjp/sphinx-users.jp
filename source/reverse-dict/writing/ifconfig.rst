.. index:: ifconfig, 拡張機能; ifconfig, 設定（conf.py）; ifconfig

.. index::
   single: 設定（conf.py）; 設定に従ってコンテンツを表示する
   single: 表示; 設定に従ってコンテンツを表示する

.. _writing-ifconfig:

設定にしたがってコンテンツを表示する
---------------------------------------------

``ifconfig`` 拡張は引数として与えられた式が ``True`` の時にだけ、コン
テンツをドキュメントに追加します。

準備として、 ``conf.py`` のextensionsにifconfigを追加します。

.. code-block:: python

  extensions = ['sphinx.ext.ifconfig' ]

こうしておいて、以下のように記述します。

.. code-block:: rst

 .. ifconfig:: version in ('0.0.1')

   versionが0.0.1の時のみ表示されます。


ここで ``version`` は ``conf.py`` で定義された値です。

独自の設定値を追加したい場合は ``conf.py`` ファイルにsetup関数を書き加
え、その中で ``add_config_value()`` を使用します。

.. code-block:: python

  def setup(app):
      app.add_config_value('releaselevel', '', True)

2つめの引数はデフォルト値です。3つ目の引数は ``True`` にしてください。
この引数は、設定値が変更された場合に、ドキュメントを再読み込みするかを
指定します。


参照
~~~~~~~

- :ref:`writing-only`
