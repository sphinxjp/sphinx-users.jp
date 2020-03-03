====================
Sphinx-users.jp site
====================

.. image:: https://app.wercker.com/status/78973d5e9b240bee7a21926d7096abf1/s/master
   :target: https://app.wercker.com/project/byKey/78973d5e9b240bee7a21926d7096abf1
   :alt: Wercker status
.. image:: https://img.shields.io/static/v1?logo=slack&label=chat&message=on%20slack&color=4a154b&style=flat-square
   :target: https://sphinxjp.slack.com/join/shared_invite/enQtNzkxMTIwMTAzOTI2LTMxY2JjMmM4OWNjNjM1YjdkMGE5N2UyYjY1NzM5MTY1NGM3YmVmMjliM2MyYmQ0ZjhlZjRmMGM5NTA5N2MwZjY
   :alt: chat on slack


http://sphinx-users.jp/


このサイトのビルド手順
========================

1. Sphinx と関連パッケージをインストール

   i. ``pip install -r requirements.txt`` を実行

2. HTMLを生成する

   i. ``make html`` を実行


自動ビルド&デプロイ
===============================

* Dockerfile の自動ビルド: https://hub.docker.com/r/sphinxjp/sphinx-users.jp/
* サイトの自動ビルド: https://app.wercker.com/sphinxjp/sphinx-users.jp/

