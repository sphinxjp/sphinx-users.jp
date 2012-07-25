.. index:: conf.py, setting; conf.py

conf.pyにiniファイルから設定を読み込む
-------------------------------------------

Sphinxの設定をconf.pyの外に書いておきたい場合があります。例えばiniやyamlに定義した値を読み込みたい場合はconf.pyに以下のように記載します。

conf.py
##########

Sphinxはconf.pyを読み込むときに以下の順番で処理します。

1. conf.pyをexecfile()相当の処理でSphinx内にロードする
2. ロードした設定値をSphinx内のapp.config._raw_configに保存する
3. conf.pyにsetup()があればこの関数を呼び出す
4. app.config._raw_configからapp.configに値を移す

以下に2つの方法を紹介しますが、それぞれ処理のタイミングが異なります。


方法1
^^^^^^^
conf.pyの読み込み時に値を設定する方法です。(前述の処理1)

conf.py::

   #...
   #...既存の設定
   #...
   release = '1.0'
   version = '1.0'

   # iniを読み込む処理
   from ConfigParser import SafeConfigParser
   conf = SafeConfigParser()
   conf.read('conf.ini')
   for key, value in conf.items('sphinx'):
       exec("%s = %r" % (key, value))

exec()関数を使うところに抵抗があります。


方法2
^^^^^^^

conf.pyのsetup()関数で、確定直前の設定値を上書きする方法です。(前述の処理3)

conf.py::

   #...
   #...既存の設定
   #...
   release = '1.0'
   version = '1.0'

   def setup(app):
       # iniを読み込む処理
       from ConfigParser import SafeConfigParser
       conf = SafeConfigParser()
       conf.read(os.path.join(os.path.dirname(os.path.abspath(__file__)), 'conf.ini'))
       for key, value in conf.items('sphinx'):
           app.config._raw_config[key] = value


Sphinxの内部変数を書き換えるため、将来のバージョンアップで動作しなくなる可能性があります。


動作確認
###########

以下のような conf.ini, index.rst を書いて確認します。

conf.ini::

   [sphinx]
   release = foo
   version = bar

index.rst::

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

