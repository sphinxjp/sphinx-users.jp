.. index:: conf.py, setting; conf.py

conf.pyにiniファイルから設定を読み込む
-------------------------------------------

Sphinxの設定をconf.pyの外に書いておきたい場合があります。例えばiniやyamlに定義した値を読み込みたい場合は以下のようにファイルを用意・記載します。

conf.ini::

   [sphinx]
   release = foo
   version = bar


conf.py::

   #...
   #...既存の設定
   #...
   release = '1.0'
   version = '1.0'

   # iniを読み込む設定
   from ConfigParser import SafeConfigParser
   conf = SafeConfigParser()
   conf.read('conf.ini')
   for k,v in conf.items('sphinx'):
       exec("%s = %r" % (k, v))


以下のような index.rst を書いて確認します::

   Welcome to conf.py test
   =========================

   :release: |release|
   :version: |version|


`make text` すると以下の内容のindex.txtが出力されました::

   Welcome to conf.py test
   ***********************

   release:
      foo

   version:
      bar

