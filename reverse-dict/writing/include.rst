.. index:: literalinclude, include, directive;include

他のファイルを読み込みたい
--------------------------------------

``include`` を使います。 ``include`` は読み込んだファイルもrstファイ
ルとみなして対処します。

一方、 ``literalinclude`` はその名のとおり、literalとしてそのまま読み込
まれます。

::

  .. include:: 読み込むファイルパス
  .. literalinclude:: 読み込むファイルパス


注意点として、 ``literalinclude`` はSphinxの拡張であり、reSTを解釈する
他のシステムではない場合があります。また、 ``include`` ではファイルがな
いとエラーになりますが、 ``literalinclude`` は警告となります。

~~~~~~~
適用例
~~~~~~~


includeの例
+++++++++++++++++++++++++

.. include:: inclusion-txt.rst


literalincludeの例
+++++++++++++++++++++++++

.. literalinclude:: inclusion-txt.rst
