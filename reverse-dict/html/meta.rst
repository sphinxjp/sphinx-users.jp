.. index:: meta, directive;meta

metaタグを指定したい
-----------------------

HTML出力時にmetaタグを指定するには ``meta`` を使います。

.. code-block:: rst

  .. meta::
     :description: 説明文
     :keywords: sphinx, rest, dictonary
     :description lang=en: This is description
     :http-equiv=Content-Type: text/html; charset=utf-8

最後の例では、 ``meta`` を使ってContent-Typeを挿入しています。しかし、
SphinxではSphinxがHTML出力をするときにすでにContent-Typeを挿入していま
す。そのため、 ``meta`` でContent-Typeを指定して場合、二つの
Content-Typeが指定されることになります。

適用例
~~~~~~~~~~

.. meta::
   :description: 説明文
   :keywords: sphinx, rest, dictonary
   :description lang=en: This is description
   :http-equiv=Content-Type: text/html; charset=utf-8

以下のようなmetaタグが挿入されます。

.. code-block:: html

    <meta content="説明文" name="description" /> 
    <meta content="sphinx, rest, dictonary" name="keywords" /> 
    <meta content="This is description" lang="en" name="description" /> 
    <meta content="text/html; charset=utf-8" http-equiv="Content-Type" /> 
 


