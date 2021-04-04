========================================
Sphinxで作ったドキュメントのホスティング
========================================

:日時: 2010/09/05
:更新日: 2021/04/04
:作者: 渋川よしき、山口能迪、清水川貴之、うさたーん

Sphinxでドキュメントを作ったら公開したいですよね？自分のホームページ作成のように、FTPを使って、プロバイダーなどで提供されている所に置くというのも当然できますが、ここではいくつか別の方法を紹介します。

.. contents::

Github Pagesを使ってドキュメントを公開
======================================

Github Pagesを使えば、個人や組織のウェブサイト、リポジトリのウェブサイトを作ることができます。

必要なもの
----------

* Githubのアカウント
* git

ケース1: 個人や組織のウェブサイトの公開手順
-------------------------------------------

1. ``ユーザ名.github.io`` という名前のリポジトリを作成します(ここのユーザ名は個人のアカウント名、もしくは組織名です)。
2. SphinxでビルドしたHTML群を登録します。
3. ``.nojekyll`` という空のファイルを作って登録します。これを登録しないと、Githubのサーバ側でJekyllというツールがディレクトリ内のファイルを変換しようとしたり、 ``_`` で始まるディレクトリが無視されたりします。
4. ``master`` ブランチにpushします。
5. ``http://アカウント名.github.io`` にアクセスすると、作成したファイルが見られます。

ケース2: リポジトリのウェブサイトの公開手順
-------------------------------------------

すでに何らかのソフトウェアのソースコードが格納されているリポジトリがあるものとします。

1. まず、 ``gh-pages`` ブランチを作ります。過去の履歴は必要ないので ``--orphan`` オプションを付けます。

   .. code-block:: bash

      $ git checkout --orphan gh-pages
      Switched to a new branch 'gh-pages'

2. 現在のソースコードがコミットされてはないものの、git addされてindexに登録されている状態になっているので、すべて削除します。

   .. code-block:: bash

      $ git rm -rf .
      rm '.gitignore'
      rm 'README.rst'
      rm 'LICENSE.rst'

3. SphinxでビルドしたHTML群を登録します。
4. ``.nojekyll`` という空のファイルを作って登録します。これを登録しないと、Githubのサーバ側でJekyllというツールがディレクトリ内のファイルを変換しようとしたり、 ``_`` で始まるディレクトリが無視されたりします。
5. ``gh-pages`` ブランチにpushします。
6. ``http://ユーザ名.github.io/リポジトリ名`` にアクセスすると、作成したファイルが見られます(ここのユーザ名は個人のアカウント名、もしくは組織名です)。

サンプル
--------

* 出来上がり: https://shibukawa.github.io/curl_as_dsl/
* ソース: https://github.com/shibukawa/curl_as_dsl/tree/gh-pages

ケース2の応用編
---------------

Sphinxのソースコード自体や、ビルド結果のHTMLは本体のコードと同期をとって管理したいはずです。で、結果のファイル群だけを ``gh-pages`` ブランチに入れたいですよね？

.. code-block:: none

   / プロジェクトのトップ
      src/ ソースコード
      doc/ Sphinxのソース

ディレクトリの構成が上記のような構造だったとします。Sphinxでソースと成果物のフォルダを分ける設定にしていなければ、 ``/doc`` 内で ``make html`` すると、 ``/doc/_build/html`` に成果物のファイルが入ります。

.. code-block:: bash

   $ git submodule add -b gh-pages git@github.com:[ユーザ名]/[リポジトリ名].git doc/_build/html

これで、 ``doc/_build/html`` が ``gh-pages`` ブランチそのものになりました。 ``make html`` 後にこのフォルダ内でコミットしてpushしつつ、プロジェクトのルートで ``doc/_build/html`` をコミットすればプロジェクトのコード等と結果のHTMLの同期がをとることができます。また、JavaScript関連のリポジトリで、プロジェクトをビルドした結果をサンプルコードとして提供したい場合も、プロジェクトのビルド結果をここに入れるようなビルドスクリプトでも用意してあげると捗ると思います。

subtreeという仕組みを使う方法もありますが、gitのsubmoduleの方が慣れている人が多いと思われるのでこちらを紹介しました。もしチャレンジしたい方は下記のページを参考にどうぞ。

* http://qiita.com/mizchi/items/17e2eb04c34b18aff921

.. warning::

   サブモジュール化した状態でmake cleanすると、デフォルトの設定だとサブモジュールの対象のフォルダがまるごと消えてしまいます。
   htmlフォルダは削除されないように修正してください。

   .. code-block:: make

      clean:
          rm -rf $(BUILDDIR)/html/*
          rm -rf $(BUILDDIR)/doctrees

   .. code-block:: bat

      if "%1" == "clean" (
          for /d %%i in (%BUILDDIR%\html) do rmdir /q /s %%i
          del /q /s %BUILDDIR%\html\*
          for /d %%i in (%BUILDDIR%\doctrees) do rmdir /q /s %%i
          del /q /s %BUILDDIR%\doctrees\*
          goto end
      )

参考
----

* https://help.github.com/articles/creating-project-pages-manually/ 公式ドキュメント
* http://d.hatena.ne.jp/hide_o_55/20130526/1369555706 Doxygenで生成したドキュメントをGitHub Pagesで手軽に公開する方法(応用編)


GitLab Pages を使ってドキュメントを公開
===========================================

GitLabを使えば、GitLab PipelineによるSphinxのドキュメントビルドと、GitLab PagesでのHTMLホスティングができます。

必要なもの
----------

* GitLabのアカウント
* git


手順
---------------

1. まずGitLabにリポジトリを作ります。例として、hellosphinxというリポジトリを作りました。

   - https://gitlab.com/shimizukawa/hellosphinx

2. このリポジトリに、Sphinxの 'conf.py' と 'index.rst' ファイルを作成します。

   既存のSphinxプロジェクトがあればそれを使っても構いません。

   - https://gitlab.com/shimizukawa/hellosphinx/blob/master/index.rst
   - https://gitlab.com/shimizukawa/hellosphinx/blob/master/conf.py

3. リポジトリに '.gitlab-ci.yml' を作成します。

   公式のドキュメントにある内容をそのまま使ってOKです。

   - https://gitlab.com/pages/sphinx#gitlab-ci

   今回は、Makefileを用意していないので、ちょっと書き換えました。
   以下のファイルでは ``make html`` コマンドの代わりに ``sphinx-build -M html . _build`` を実行しています。

   - https://gitlab.com/shimizukawa/hellosphinx/blob/master/.gitlab-ci.yml

4. '.gitlab-ci.yml' があると、自動的にGitLab Pipelineが実行されます。

   - https://gitlab.com/shimizukawa/hellosphinx/pipelines

5. ビルドしたHTMLが公開されました！

   URLは ``<username|groupname>.gitlab.io/<reponame>`` です。

   - https://shimizukawa.gitlab.io/hellosphinx/


なお、GitLabではプライベートリポジトリを無料で作成できますが、GitLab Pagesに公開したページは誰でもアクセスできます。アクセス権を設定する要望が `gitlab-ce#33422 <https://gitlab.com/gitlab-org/gitlab-ce/issues/33422>`__ で行われています。今のところ（2017/6/11現在）、一般公開したくないページについては、GitLab Pagesでこっそり公開するか、別のところで公開する必要があります。

参考

- https://pages.gitlab.io/
- https://gitlab.com/pages/sphinx


Heroku を使ってドキュメントを公開（BASIC認証付き）
===================================================

Herokuを使えば、利用者がサイトにアクセスしたタイミングでプロセスを起動できます。
プロセス起動時にmake htmlを実行し、簡易的なWebアプリケーションでHTMLを参照させることで、Sphinxドキュメントをホスティングします。Webアプリケーションが必要なところが不便ですが、代わりにBASIC認証をかけることができます。

メリット

* Herokuの無料プランを使える
* BASIC認証を設定できるため、公開したくないドキュメントのホスティングに良いよ

デメリット

* Herokuの設定と、Heroku用設定ファイルが必要
* Webアプリのコードが必要

必要なもの
----------

* Herokuのアカウント
* git


手順
---------------

1. まずHerokuにプロジェクトを作ります。例として、hellosphinx-herokuというプロジェクトを作ります。

2. SphinxのプロジェクトとWebアプリのコードを用意（後述）

3. Herokuにあるgitリポジトリにpush

   詳しくはHerokuのプロジェクトページ（例えばhellosphinx-herokuプロジェクト）のDeployタブを見てください。


.. note::

   Herokuのgitは、HerokuのAccount Settingsページに登録したSSH鍵を使って、 ``git@heroku.com:<YOUR-HEROKU-PROJECT-NAME>.git`` でアクセスできます。例えばhellosphinx-herokuプロジェクトなら ``git@heroku.com:hellosphinx-heroku.git`` です。


リポジトリに以下のファイルを用意します。

.. note::

   ここで紹介するコードは以下のリポジトリにあります
   https://gitlab.com/shimizukawa/hellosphinx-heroku

:doc/:
   Sphinxドキュメントのソースディレクトリ。index.rstやconf.pyを置きます。

:Procfile:
   Herokuのプロセス定義。
   Webアプリとしてrun.shを実行します::

      web: sh run.sh

:runtime.txt:
   Herokuで実行するランタイムを指定します::

      python-3.6.1

:run.sh:
   起動時にSphinxドキュメントをビルドして、ビルドしたHTMLを表示するWebアプリケーション ``main.py`` を起動します。
   環境変数は ``main.py`` で使います。
   ::

      export HTML_PATH=_build/html
      export BASIC_AUTH=hello:sphinx

      sphinx-build -M html doc _build
      python main.py

:requirements.txt:
   Herokuが起動時に環境にインストールするパッケージを指定しておきます。
   ::

      sphinx
      bottle

:main.py:

   指定ディレクトリにある静的ファイルを返すWebアプリの実装です。
   ``HTML_PATH`` 環境変数でSphinxのビルド済みHTMLのパスを指定します。
   ``BASIC_AUTH`` 環境変数にIDとパスワードを指定するとBASIC認証も設定できます（無指定なら無認証）。
   ::

      import os
      import bottle

      ROOT = os.path.join(os.environ.get('HTML_PATH', '.'))
      AUTH = os.environ.get('BASIC_AUTH', None)
      PORT = int(os.environ.get('PORT', '8080'))


      def check(username, password):
          return ':'.join([username, password]) == AUTH


      def server_static(path):
          if path.endswith('/'):
              path += 'index.html'
          return bottle.static_file(path, root=ROOT)

      if AUTH is not None:
          server_static = bottle.auth_basic(check)(server_static)

      server_static = bottle.route('<path:path>')(server_static)

      if __name__ == '__main__':
          bottle.run(host='0.0.0.0', port=PORT)



GitLabとの連携
---------------

Herokuのgitに直接pushするには、利用者全員がHerokuのアカウントを持っている必要があります。また、Herokuのgitを使った場合、コードリポジトリに欲しい機能（IssueやPull Request）などはありません。そこで、コード管理をGitLabで行い、GitLabにpushされたコードを自動的にHerokuにPushする機能を設定すると便利です。GitLabではプライベートリポジトリも無料で使用できます。

   .. figure:: images/gitlab-gitsync.*
      :scale: 100%
      :alt: gitlab の設定

.. note::

   Herokuのgitは、HerokuのAccount Settingsページで生成できるAPI Keyを使って ``https://heroku:<YOUR-API-KEY>@git.heroku.com/<YOUR-HEROKU-PROJECT-NAME>.git`` でアクセスできます。


Bitbucket.orgを使ってドキュメントを公開
============================================

Bitbukcet上に、 ``http://ユーザ名.bitbucket.io`` という名前でドキュメントを公開できます。

必要なもの
----------

* Bitbucketのアカウント
* Mercurial/git

公開手順
--------

1. ``ユーザ名.bitbucket.io`` という名前のリポジトリを作ります。

   .. figure:: images/bitbucket.*
      :scale: 100%
      :alt: bitbucket で repository の name を指定する

2. リポジトリを作った後のOverviewのページに表示されているコマンド(hg clone)を実行します
3. SphinxでビルドしたHTML群を登録します。
4. コミットして、Bitbucketに変更をPushします。
5. ``http://ユーザ名.bitbucket.io`` にアクセスすると、作成したファイルが見られます。

.. tip::

   DirectoryIndexのように、index.htmlが無い場合に自動的にファイル一覧を表示する機能は無いので、
   サブディレクトリに複数のドキュメントを分けて置きたい場合等は、ルートディレクトリに自分で
   index.htmlを用意する必要があります。

参考: `Free Hosting at BitBucket <http://hgtip.com/tips/beginner/2009-10-13-free-hosting-at-bitbucket/>`_



Google App Engineを使ってドキュメントを公開
===========================================

Google App Engine上で静的ファイルを公開する方法を使ってホスティングします。

必要なもの
----------

* Google App Engineのアカウントと `開発環境 <http://code.google.com/intl/ja/appengine/docs/python/gettingstarted/devenvironment.html>`_

公開手順
--------

#. Google App Engine （以下GAE）のアプリケーションを作成します。
   詳細は `公式サイト <http://code.google.com/intl/ja/appengine/docs/java/gettingstarted/uploading.html>`_ を参照してください。
   ここでは ``hoge`` というアプリケーションを作成します。

#. GAEプロジェクトディレクトリをローカルに作成し、Sphinxドキュメントのビルドディレクトリにシンボリックリンクを張ります。

   .. code-block:: bash

      $ mkdir hoge
      $ cd hoge
      $ ln -s /home/sphinxuser/docs/hoge/_build/html hoge_document
 

#. プロジェクトディレクトリ直下に ``app.yaml`` を作成します。

   .. code-block:: yaml

      application: hoge
      version: 1
      runtime: python
      api_version: 1
      
      handlers:
      - url: /hoge_document
        static_dir: hoge_document

   この時点でディレクトリは下記のようになっているはずです。

   .. code-block:: none

      hoge
      ├── app.yaml
      └── hoge -> /home/sphinxuser/docs/hoge/_build/html
      
#. appcfg.pyを使ってGAEへデプロイします。この時appcfg.pyに渡すのはディレクトリ名であることに注意してください。

   .. code-block:: bash

      $ appcfg.py update hoge
      Application: hoge; version: 1.
      Server: appengine.google.com.
      Scanning files on local disk.
      Scanned 500 files.
      Initiating update.
      Could not guess mimetype for hoge_document/objects.inv.  Using application/octet-stream.
      Cloning 35 static files.
      Cloning 403 application files.
      Cloned 100 files.
      Cloned 200 files.
      Cloned 300 files.
      Cloned 400 files.
      Uploading 403 files and blobs.
      Uploaded 403 files and blobs.
      Deploying new version.
      Checking if new version is ready to serve.
      Will check again in 1 seconds.
      Checking if new version is ready to serve.
      Will check again in 2 seconds.
      Checking if new version is ready to serve.
      Will check again in 4 seconds.
      Checking if new version is ready to serve.
      Closing update: new version is ready to start serving.
      Uploading index definitions.
      

#. （おまけ）デプロイの自動化をするには下記のようなスクリプトを作成してcrontabに登録しておくとよいでしょう。パスワードはappcfg.pyに渡せないので、スクリプト化するには `expect` を使う必要があります。

   .. code-block:: bash

      #!/bin/bash
      
      DOCS_HOME=${HOME}/src/docs
      GAE_SDK_HOME=${HOME}/tool/google_appengine
      GAE_APP_HOME=${HOME}/gae/
      GAE_APP_NAME=hoge
      GAE_USER=<user mail address>
      GAE_PASS=<password>
      
      PASSWD_MSG="Password for "${GAE_USER}
      
      make html
      sleep 60
      
      cd ${GAE_APP_HOME}
      
      expect -c "
      spawn $GAE_SDK_HOME/appcfg.py update --email=$GAE_USER --passin $GAE_APP_NAME
      set timeout -1
      expect $PASSWD_MSG
      send $GAE_PASS
      interact
      "   

Vercelを使ってドキュメントを公開
================================

2021年現在、静的コンテンツを便利に公開できるサービスが数多く存在します。
主なサービスとして `Netlify`_ 、 `Vercel`_ 、 `Cloudflare Pages`_ 、 `AWS Amplify`_ などがあります。
これらのサービスの特徴のひとつに、 `GitHub`_ や `Gitlab`_ にホスティングしているリポジトリを指定し、ビルド設定をするだけで Sphinx ドキュメントを公開できるというものがあります。

以前より `Read the Docs`_ でも同様の自動化が可能でしたが、現在では数多くのサービスが選択できるようになりました。

本節では `Vercel`_ を利用して Sphinx ドキュメントを公開する手順を説明します。


本説明で可能となること
----------------------

- `GitHub`_ や `Gitlab`_ にホスティングしているリポジトリを指定してドキュメントをビルドし公開する
- リポジトリ更新を hook してドキュメントを更新する
- 自分の所持しているドメインを設定する
- httpsで公開する

前提条件
--------

- `GitHub`_ に標準設定で作成した sphinx ドキュメントのリポジトリがあること(例では ``test-vercel`` という名称で push 済)
- 独自ドメインを取得している


`Vercel`_ の詳細設定
--------------------


#. `Vercel`_ にログインします。 `GitHub`_ のアカウントを利用できます

   .. figure:: images/vercel_01_after_login.png
      :scale: 20%
      :alt: Vercel の設定

#. リポジトリを選択します(例では ``test-vercel`` を選択)

   .. figure:: images/vercel_02_import_git_repository.png
      :scale: 50%
      :alt: Vercel の設定

#. `Vercel`_ に見せるリポジトリを選択します(例では選択したリポジトリのみにしてますが、複数のリポジトリを使う予定であれば All repositories を選択すると良いでしょう)

   .. figure:: images/vercel_03_selectrepository.png
      :scale: 50%
      :alt: Vercel の設定

#. 選択したリポジトリが表示されていることを確認して ``import`` を押下します

   .. figure:: images/vercel_04_import_git_repository.png
      :scale: 50%
      :alt: Vercel の設定


#. チームで使用することもできますが、自分ひとりで使う場合は自分のアカウントを表示している行で ``Select`` を押下します

   .. figure:: images/vercel_05_select_account.png
      :scale: 50%
      :alt: Vercel の設定


#. プロジェクトを確認して ``Continue`` を押下します

   .. figure:: images/vercel_06_import_project.png
      :scale: 50%
      :alt: Vercel の設定


#. build 設定をします。前提条件の通り sphinx 標準のプロジェクトを想定した設定です

   #. ``ROOT DIRECTORY`` は ``./`` のままにします
   #. ``BUILD COMMAND`` に :command:`python3 -m pip install pip -U && python3 -m pip install sphinx Pillow && make clean && make html` を記述します
   #. ``OUTPUT DIRECTORY`` に ``_build/html/`` を記述します。多くのCIサービスで ``artifacts`` と呼ばれている項目です
   #. ``Deploy`` を押下すると、ビルドログが流れます

   .. figure:: images/vercel_07_buld_config.png
      :scale: 50%
      :alt: Vercel の設定


#. ビルドに問題が発生しなければ以下のような画面になるでしょう。 ``Visit`` を押下すると公開されたドキュメントへ、 ``OpenDashboad`` を押下するとダッシュボードへ戻ります

   .. figure:: images/vercel_08_congratulations.png
      :scale: 20%
      :alt: Vercel の設定


#. Projects ⇒ プロジェクト名(ここでは test-vercel) ⇒ Settings ⇒ Domains を押下し、使用したいサブドメインを記述し ``Add`` を押下します(ここではまだ作成していないサブドメイン ``vercel.sphinx-users.jp`` を入力しています)

   .. figure:: images/vercel_09_custom_domain.png
      :scale: 50%
      :alt: Vercel の設定

#. 存在していないサブドメインを指定した場合は ``Invalid Configurations`` という警告がでますが、気にせず ``CNAME`` のレコードをメモしてください

   .. figure:: images/vercel_10_invalid_configurations.png
      :scale: 30%
      :alt: Vercel の設定

#. 自分のドメインのレジストラのコンソールでメモした ``CNAME`` レコードを設定してください(例は AWS Route53)

   .. figure:: images/vercel_11_route53.png
      :scale: 50%
      :alt: Vercel の設定

#. ``CNAME`` の設定が終わると ``Invalid Configurations`` の警告は消えます

   .. figure:: images/vercel_12_normal.png
      :scale: 50%
      :alt: Vercel の設定

#. 設定したサブドメインへWebブラウザで接続してみましょう

   .. figure:: images/vercel_13_published.png
      :scale: 50%
      :alt: Vercel の設定

#. 証明書もこのように Let's Encrypt で作成されています

   .. figure:: images/vercel_14_certificate.png
      :scale: 50%
      :alt: Vercel の設定

以上


.. _Netlify: https://www.netlify.com/
.. _Vercel: https://vercel.com/
.. _Cloudflare Pages: https://pages.cloudflare.com/
.. _AWS Amplify: https://aws.amazon.com/jp/amplify/
.. _GitHub: https://github.com/
.. _Gitlab: https://gitlab.com/
.. _Read the Docs: https://readthedocs.org/
