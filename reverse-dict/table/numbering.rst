
.. _images-numbering:

表に番号を自動で振りたい
--------------------------------------------

表に自動で番号を割り振って、文中からその番号で参照したい、ということが
あります。(例: 図1では…)しかし残念ながら

http://stackoverflow.com/questions/2686310/referencing-figures-with-numbers-in-sphinx-and-restructuredtext

を見ると、その機能はまだ実装されていないそうです。

ただし、PDF 出力(LaTeX経由)の場合のみ LaTeX の機能を利用することで実現できます。
http://article.gmane.org/gmane.text.docutils.user/5623 によると、
``raw`` ディレクティブで LaTeX コマンドの置き換えを行いつつ、
``label`` ロールと ``ref`` ロールで定義と参照を行うことができるとのことです。

:: 

  .. role:: ref
  
  .. role:: label
  
  .. raw::  latex
  
    \newcommand*{\docutilsroleref}{\ref}
    \newcommand*{\docutilsrolelabel}{\label}
  
  .. figure:: mc.png
     :width: 50
  
     :label:`mc` Midnight Commander icon enlarged 
