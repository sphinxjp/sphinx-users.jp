
.. _images-numbering:

表に番号を自動で振りたい
--------------------------------------------

表に自動で番号を割り振って、文中からその番号で参照したい、ということが
あります。(例: 図1では…)しかし残念ながら

http://stackoverflow.com/questions/2686310/referencing-figures-with-numbers-in-sphinx-and-restructuredtext

を見ると、その機能はまだ実装されていないそうです。

一応実現方法はあって、
http://article.gmane.org/gmane.text.docutils.user/5623 によると、refロー
ルと ``label`` ロール、そして ``latex`` を直接使うそうです。

:: 

  .. role:: ref
  
  .. role:: label
  
  .. raw::  latex
  
    \newcommand*{\docutilsroleref}{\ref}
    \newcommand*{\docutilsrolelabel}{\label}
  
  .. figure:: mc.png
     :width: 50
  
     :label:`mc` Midnight Commander icon enlarged 
