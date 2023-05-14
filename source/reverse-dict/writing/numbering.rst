.. index:: numberd, toctree; numberd

.. _writing-numbering:

章や節に番号を振りたい
----------------------

1 章、1.1節などのように番号を振りたい場合、 ``toctree`` に ``numbered``
オプションを加えます。

.. code-block:: rst

  .. toctree::
     :maxdepth: 2
     :numbered:
  
     overview
     design
     implementation

ただし、章や節に文中から 「1.1節で述べたように」というようにはしてくれ
ません。(「 :ref:`images-numbering` 」も参考のこと)
