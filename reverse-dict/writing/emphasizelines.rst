コードブロック内で特定の行だけ強調表示したい
----------------------------------------------

Sphinx 1.1から導入された emphasize-lines を使います。

::

  .. code-block:: python
     :emphasize-lines: 3,5
  
     def some_function():
         interesting = False
         print 'この行はハイライトされます'
         print 'この行はされません'
         print '...でも、この行はされます'

テーマによってはインデントが崩れているように見えますが、コピー&ペース
トすれば問題ありません。

~~~~~~
適用例
~~~~~~

.. code-block:: python
   :emphasize-lines: 3,5

   def some_function():
       interesting = False
       print 'この行はハイライトされます'
       print 'この行はされません'
       print '...でも、この行はされます'
