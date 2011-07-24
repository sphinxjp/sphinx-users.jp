.. index:: exclude_patterns, conf.py; exclude_patterns 

あるディレクトリやファイルを読み込まないようにしたい
---------------------------------------------------------------------------

conf.pyの ``exclude_patterns`` を設定します。これらのパスはソースディレ
クトリからの相対パスです。

::

  # library/xml.rstファイルを無視します
  exclude_patterns = ['library/xml.rst']

  # library/xmlディレクトリを無視します
  exclude_patterns = ['library/xml]

  # libraryディレクトリにあるxmlで始まるファイル名を持つファイルを全て
  # 無視します
  exclude_patterns = ['library/xml*']

  # すべての .svn ディレクトリを無視します
  exclude_patterns = ['**/.svn']

  # systemディレクトリ、exclude.rstファイル、tmpで始まるファイル
  # の全てを無視します
  exclude_patterns = ['system', 'exclude.rst', 'tmp*']


.. note:: exclude_trees, unused_docs, exclude_dirnamesは1.0から廃止さ
   れました。 ``exclude_patterns`` を使ってください。


.. note:: windows環境でも、ディレクトリの区切りには/(スラッシュ)を使い
          ます
