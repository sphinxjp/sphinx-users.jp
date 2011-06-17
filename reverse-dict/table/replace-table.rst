
.. _images-replace-table:

replaceを使ってテーブルに画像を貼る
------------------------------------------------------------

``replce`` を使って画像を貼ると、記述が楽になります。

これは、 ``csv-table`` や ``list-table`` ではなく、テキストでの見やすさ
を重視してgridtableを使って書いているときに特に便利です。

まず、 ``replace`` で ``image`` を定義しておきます。

::

  .. |python| image:: ../img/python-logo-master-v3-TM.png
     :scale: 50
     
  .. |ruby| image:: ../img/ruby-logo-R.png
     :scale: 20
  
こうしておけば、 ``table`` はシンプルに記述できます。

::

  ========= ========
   Python    Ruby
  --------- --------
  |python|   |ruby| 
  ========= ========
  
  

適用例
~~~~~~
.. |python| image:: ../img/python-logo-master-v3-TM.png
   :scale: 50
   
.. |ruby| image:: ../img/ruby-logo-R.png
   :scale: 20

========= ========
 Python    Ruby
--------- --------
|python|   |ruby| 
========= ========

  

