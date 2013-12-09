エラーハンドリング
=======================

拡張を書いているときに、エラーを出したいときがあります。こういう時には、
sphinx.errorsで定義されている例外を使いますと、通常の例外よりも表示が
親切になります。

sphinx.errorsには以下の例外が定義されています。

- SphinxError
- SphinxWarning
- ExtensionError
- ConfigError
- ThemeError
- VersionRequirementError
- PycodeError

使い方としては通常の例外と同じです。

.. code-block:: python

   from sphinx.errors import ExtensionError

   raise ExtensionError("Could not load extension")

なお、SphinxWarningは「Errorとして扱うようなWarningについて用いる」との
説明がついています。そのため、warningであってもその場でbuildがストップ
します。

警告のみとしたい
----------------

sphinx.application.warn()を使うことで、build時に警告表示が出来ます。Exceptionとは異な
り、buildが停止することはありません。停止させたい場合はExceptionを使っ
てください。

なお、sphinx.applicationはappとして拡張を書くときにいろいろな場所で使わ
れいます。

.. code-block:: python

   def SomeBuilder(Builder):

       def init(self):
           self.app.warn("------ Print Warning")
           self.app.info("------ Print Info")

こう書いておくと、

::

   Running Sphinx v1.2
   loading pickled environment... done
   WARNING: ------ Print Warning
   ------ Print Info
   updating environment: 0 added, 0 changed, 0 removed
   looking for now-outdated files... none found
   preparing documents... done
   writing output... [100%] index

   build succeeded, 1 warning.

というように、画面上と最後に表示されます。

なお、上記例でも使っていますが、warnの他に

- info

があり、こちらは最後のwarningの数には含まれません。また、Sphinx-1.2から

- verbose
- debug

と `-v` オプションが追加されました。

