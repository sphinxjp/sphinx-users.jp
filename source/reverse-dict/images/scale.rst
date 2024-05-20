.. index:: 画像; 画像の大きさを変える

画像の大きさを変えたい
----------------------------------------------------

imageディレクティブには画像の大きさを変えるさまざまなオプションがあり
ます。

height
  縦の長さを指定します。
width
  横の長さをサイズか現在の行の幅からの割合で指定します。
scale
  倍率を指定します。heightやwidthと一緒に指定された場合、その値と合わせ
  て横と縦が決定されまます。例えば、heightが200pxでscaleが50%とした場合、
  heightを100px、scaleの指定はなし(100%)と同じ高さになります。

heightとwidthは以下の単位を付けることができます。(例: 1cm) これらはCSS
での定義と同じです。なにもつけない場合は ``px`` となります。

::

  "em", "ex", "px", "in", "cm", "mm", "pt", "pc"


.. code-block:: rst

  - scaleを使った場合
  
  .. image:: ../img/python-logo-master-v3-TM.png
     :scale: 60
  
  - widthを割合で指定した場合
  
  .. image:: ../img/python-logo-master-v3-TM.png
     :width: 50%
  
  - heightとscaleを同時に指定した場合
  
  .. image:: ../img/python-logo-master-v3-TM.png
     :height: 50px
     :scale: 120%
  

~~~~~~
適用例
~~~~~~

- scaleを使った場合

.. image:: ../img/python-logo-master-v3-TM.png
   :scale: 60

- widthを割合で指定した場合

.. image:: ../img/python-logo-master-v3-TM.png
   :width: 50%

- heightとscaleを同時に指定した場合

.. image:: ../img/python-logo-master-v3-TM.png
   :height: 50px
   :scale: 120%
