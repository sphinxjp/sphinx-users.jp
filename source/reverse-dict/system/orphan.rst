.. index::
   single: orphan
   single: 参照; どこからも参照されていないファイル

document isn't included in any toctreeという警告が出る
--------------------------------------------------------------------

どこからも参照されていないrstファイルがあると、sphinxは

:: 

  checking consistency... inclusion-txt.rst:: WARNING: document isn't included in any toctree

という警告を出します。

これを解決するには、ファイルの先頭に ``orphan`` を書きます。

.. code-block:: rst

  :orphan: 


