==============================
Python Enhancement Proposal: 1
==============================

.. PEP: 1
   Title: PEP Purpose and Guidelines
   Version: $Revision$
   Last-Modified: $Date$
   Author: Barry Warsaw, Jeremy Hylton, David Goodger
   Status: Active
   Type: Process
   Content-Type: text/x-rst
   Created: 13-Jun-2000
   Post-History: 21-Mar-2001, 29-Jul-2002, 03-May-2003

:PEP: 1
:タイトル: PEP 提案とガイドライン
:バージョン: 80667
:最終更新日: 2010-04-30 21:21:52 +0200 (Fri, 30 Apr 2010)
:著者: Barry Warsaw, Jeremy Hylton, David Goodger
:ステータス: アクティブ
:タイプ: プロセス
:Content-Type: text/x-rst
:作成日時: 13-Jun-2000
:投稿履歴: 21-Mar-2001, 29-Jul-2002, 03-May-2003


.. What is a PEP?
   ==============

PEPとは何か？
=============

.. PEP stands for Python Enhancement Proposal.  A PEP is a design
   document providing information to the Python community, or describing
   a new feature for Python or its processes or environment.  The PEP
   should provide a concise technical specification of the feature and a
   rationale for the feature.

PEPはPython拡張提案(Python Enhancement Proposal)を表しています。PEPはPythonのコミュニティに対して情報を提供したり、Pythonの新機能やプロセス、環境などを説明するための設計書です。PEPは、技術的な仕様と、その機能が必要な論理的な理由を提供しなければなりません。

.. We intend PEPs to be the primary mechanisms for proposing new
   features, for collecting community input on an issue, and for
   documenting the design decisions that have gone into Python.  The PEP
   author is responsible for building consensus within the community and
   documenting dissenting opinions.

我々は、PEPを、新機能を提案したり、課題に関するコミュニティの意見を集約したり、Pythonに取り込まれることになる、設計上の決定をドキュメント化するための、主要なメカニズムであると位置づけています。PEPの作者は、コミュニティの中でコンセンサスを取ったり、反対意見の記録を取る責任を持ちます。

.. Because the PEPs are maintained as text files in a versioned
   repository, their revision history is the historical record of the
   feature proposal [1]_.

PEPはテキストファイルの形式でバージョン管理されたリポジトリの中に保管されます。そのリポジトリの変更履歴は、機能提案の経緯の記録となります。 [1]_

.. PEP Types
   =========

PEPの種類
=========

.. There are three kinds of PEP:

PEPの種類は、次のような3種類あります。

.. 1. A **Standards Track** PEP describes a new feature or implementation
      for Python.

   2. An **Informational** PEP describes a Python design issue, or
      provides general guidelines or information to the Python community,
      but does not propose a new feature.  Informational PEPs do not
      necessarily represent a Python community consensus or
      recommendation, so users and implementors are free to ignore
      Informational PEPs or follow their advice.

   3. A **Process** PEP describes a process surrounding Python, or
      proposes a change to (or an event in) a process.  Process PEPs are
      like Standards Track PEPs but apply to areas other than the Python
      language itself.  They may propose an implementation, but not to
      Python's codebase; they often require community consensus; unlike
      Informational PEPs, they are more than recommendations, and users
      are typically not free to ignore them.  Examples include
      procedures, guidelines, changes to the decision-making process, and
      changes to the tools or environment used in Python development.
      Any meta-PEP is also considered a Process PEP.

1. **Standards Track(標準化過程) PEP** はPythonの新しい機能や実装について説明するドキュメントです。

2. **Informational(情報) PEP** はPythonの設計上の課題や、Pythonコミュニティに知らせる一般的なガイドラインや情報などを説明するドキュメントです。新機能の提案は行いません。Informational PEPの場合には必ずしもPythonコミュニティの間でのコンセンサスは必要とはなりませんし、推奨もしていません。ユーザやPythonの実装者は、自由にこれらのPEPを無視したり、従ったりすることができます。

3. **Process(プロセス) PEP** はPythonを取り巻くプロセスについて説明をしたり、プロセスや、プロセス中のイベントについて提案したりするドキュメントです。Process PEPはStandards Track PEPに似ていますが、Pythonの言語そのもの以外の領域が対象となります。実装の提案をする可能性はありますが、Pythonのコードベースに対して提案することはありません。このPEPはコミュニティ内のコンセンサスを必要とすることが多いでしょう。Informational PEPとは異なり、推奨以上の拘束力を持ち、ユーザーは通常これを無視することはできません。例えば、手続き、ガイドライン、意志決定法、Python開発で利用されるツールや環境などの変更などが含まれます。PEPを規定するメタなPEPもProcess PEPであると考えられています。


.. PEP Work Flow
   =============

PEPワークフロー
===============

.. The PEP editors assign PEP numbers and change their status.  Please send
   all PEP-related email to <peps@python.org> (no cross-posting please).
   Also see `PEP Editor Responsibilities & Workflow`_ below.

PEP編集者は、PEP番号を割り当てたり、PEPのステータスを変更したりします。PEPに関連するすべてのEメールは <peps@python.org> (クロスポストはしないでください) に送って下さい。また、後ろの方で紹介する、 `PEP編集者の責務とワークフロー`_ も確認してください。

.. The PEP process begins with a new idea for Python.  It is highly
   recommended that a single PEP contain a single key proposal or new
   idea. Small enhancements or patches often don't need
   a PEP and can be injected into the Python development work flow with a
   patch submission to the Python `issue tracker`_. The more focussed the
   PEP, the more successful it tends to be.  The PEP editor reserves the
   right to reject PEP proposals if they appear too unfocussed or too
   broad.  If in doubt, split your PEP into several well-focussed ones.

PEPのプロセスは、Pythonに対する新しいアイディアを発想するところから始まります。重要な提案や、新しいアイディアは、1つのPEPに対して1つだけ含むようにする、というのを強く推奨します。もし、改善提案やパッチがそれほど大きくないのであれば、PEPを作成する必要がないケースが多いでしょう。この場合には、Pythonの開発ワークフローの方で対応することができるので、Pythonの `issue tracker`_ に対してパッチを送信します。注目されるPEPほど、受け入れられる確率は高いという傾向があります。PEP編集者は、PEPの焦点がぼやけていたり、範囲が広すぎる場合には提案を否認できる権利を持っています。疑わしい場合には、焦点がしっかりした項目にPEPを分割して下さい。

.. Each PEP must have a champion -- someone who writes the PEP using the
   style and format described below, shepherds the discussions in the
   appropriate forums, and attempts to build community consensus around
   the idea.  The PEP champion (a.k.a. Author) should first attempt to
   ascertain whether the idea is PEP-able.  Posting to the
   comp.lang.python newsgroup (a.k.a. python-list@python.org mailing
   list) or the python-ideas mailing list is the best way to go about this.

PEPごとにチャンピオンを定める必要があります。チャンピオンは、これから紹介するスタイルやフォーマットに従ってPEPを書き、適切なフォーラムで行われる議論に目を通し、出したアイディアについて、コミュニティの中でコンセンサスを取る努力を行います。PEPチャンピオン(著者とも言う)はまず、アイディアをPEPにすることができるかどうかを確かめるべきです。comp.lang.pythonニューズグループや、python-list@python.orgメーリングリスト、あるいは、python-ideasメーリングリストに投稿してみるというのがもっとも良いでしょう。

.. Vetting an idea publicly before going as far as writing a PEP is meant
   to save the potential author time. Many ideas have been brought
   forward for changing Python that have been rejected for various
   reasons. Asking the Python community first if an idea is original
   helps prevent too much time being spent on something that is
   guaranteed to be rejected based on prior discussions (searching
   the internet does not always do the trick). It also helps to make sure
   the idea is applicable to the entire community and not just the author.
   Just because an idea sounds good to the author does not
   mean it will work for most people in most areas where Python is used.

PEPを書くよりも前に、アイディアを公開して意見を診断してもらうと、トータルでPEPの著者がかけなければならない時間は短くなるでしょう。Pythonを変更する多くのアイディアが提案されてきましたが、様々な理由から否認されたものも数多くあります。アイディアがオリジナルのものである場合に、初めにPythonコミュニティに投げかけると、リジェクトされる場合に、そのための議論に費やされるのを防ぐ手助けとなります(インターネットで検索するというのは代替にはなりません)。こうすることで、著者だけではなく、コミュニティ全体にアイディアが適合するということを保証しやすくなります。というのも、著者にとって良いアイディアと思えるものが、Pythonを使用している多くの人にとってもそうとは限らないからです。

.. Once the champion has asked the Python community as to whether an
   idea has any chance of acceptance, a draft PEP should be presented to
   python-ideas.  This gives the author a chance to flesh out the draft
   PEP to make properly formatted, of high quality, and to address
   initial concerns about the proposal.

チャンピオンがPythonコミュニティに、そのアイディアには採用のチャンスがあるかどうかを訪ねる際には、一度、PEPの草稿をpython-ideasメーリングリストに投げるべきです。投げて読んでもらう目的を満たすために、フォーマットが整えたり、品質を上げ、提案に関する心配なこともきちんと書いたりと、著者がPEPを具体的な形にするきっかけになるでしょう。

.. Following a discussion on python-ideas, the proposal should be sent to
   the `python-dev list <mailto:python-dev@python.org>`__ with the draft
   PEP and the PEP editors <peps@python.org>.  This
   draft must be written in PEP style as described below, else it will be
   sent back without further regard until proper formatting rules are
   followed.

python-ideasの議論の後は、提案を `python-dev list <mailto:python-dev@python.org>`__ と、PEP editors <peps@python.org> に送ります。このドラフトは、これから説明するPEPのスタイルで書かれている必要があります。適切なフォーマットのルールにしたがっていなければ、内容を見られることなく、突き返されることになります。

.. If the PEP editor approves, he will assign the PEP a number, label it
   as Standards Track, Informational, or Process, give it status "Draft",
   and create and check-in the initial draft of the PEP.  The PEP editor
   will not unreasonably deny a PEP.  Reasons for denying PEP status
   include duplication of effort, being technically unsound, not
   providing proper motivation or addressing backwards compatibility, or
   not in keeping with the Python philosophy.  The BDFL (Benevolent
   Dictator for Life, Guido van Rossum) can be consulted during the
   approval phase, and is the final arbiter of the draft's PEP-ability.

PEP編集者が承認すると、PEP番号を割り当てます。Standards Track/Informational/Processのどれかを設定し、ステータスを"Draft(草案)"に設定し、最初のPEPの草案をチェックインします。PEPエディタは理由なくPEPを否認はしません。PEPを否認する理由としては、他のPEPと重複している、技術的にうまくいかない、動機が適切ではない、後方互換性に注意が向けられていない、Pythonの哲学から外れる、といったものがあります。承認フェーズの間、BDFL(慈悲深き終身独裁者, Python作者のGuido van Rossum)に相談することができます。BDFLは、PEPのドラフトの最終決裁者でもあります。

.. As updates are necessary, the PEP author can check in new versions if
   they have SVN commit permissions, or can email new PEP versions to
   the PEP editor for committing.

アップデートが必要になると、もしSVNのコミット件を持っていればPEP作者はチェックインすることができます。もしなければ、新しいPEPをPEP編集者にメールで送ってコミットしてもらいます。

.. Standards Track PEPs consist of two parts, a design document and a
   reference implementation.  The PEP should be reviewed and accepted
   before a reference implementation is begun, unless a reference
   implementation will aid people in studying the PEP.  Standards Track
   PEPs must include an implementation -- in the form of code, a patch,
   or a URL to same -- before it can be considered Final.

Standards Track PEPは大きく2つのパートを含みます。設計ドキュメントと、リファレンス実装です。リファレンス実装がPEPの理解の助けとなる場合を除き、リファレンス実装を始める前に、PEPのレビューと受理が行われる必要があります。Standards Track PEPはステータスがFinal(確定)となる前までに、コード、パッチ、URLなどといった形で実装を含めなければなりません。

.. PEP authors are responsible for collecting community feedback on a PEP
   before submitting it for review. However, wherever possible, long
   open-ended discussions on public mailing lists should be avoided.
   Strategies to keep the
   discussions efficient include: setting up a separate SIG mailing list
   for the topic, having the PEP author accept private comments in the
   early design phases, setting up a wiki page, etc.  PEP authors should
   use their discretion here.

PEP作者は、レビューのために提出する前に、PEPに対するコミュニティのフィードバックを収集する責任があります。しかし、可能であればパブリックなメーリングリストでの長い議論は避けるべきです。議論を効率的に保つための戦略として、その話題に関するSIGメーリングリストを立てたり、初期のデザインフェーズでプライベートにコメントを募集したり、Wikiのページを用意するなどがあります。PEP作者は自分で適切に判断する必要があります。

.. Once the authors have completed a PEP, they must inform the PEP editor
   that it is ready for review.  PEPs are reviewed by the BDFL and his
   chosen consultants, who may accept or reject a PEP or send it back to
   the author(s) for revision.  For a PEP that is pre-determined to be
   acceptable (e.g., it is an obvious win as-is and/or its implementation
   has already been checked in) the BDFL may also initiate a PEP review,
   first notifying the PEP author(s) and giving them a chance to make
   revisions.

いったん作者がPEPを完成させたら、レビューの準備ができたということをPEP編集者に知らせます。BDFLと、彼が選んだコンサルタントがPEPをレビューを行い、PEPの受理/否認を行ったり、変更を加えてもらうために作者に差し戻したりします。受理されるのが予定されるPEP(たとえば、そのままでも問題がまったくない、もしくはその実装がすでにチェックイン済み、あるいはその両方)の場合は、BDFLもPEPレビューを開始するかもしれません。最初にPEPの作者に知らされて、改訂するチャンスが与えられます。

.. For a PEP to be accepted it must meet certain minimum criteria.  It
   must be a clear and complete description of the proposed enhancement.
   The enhancement must represent a net improvement.  The proposed
   implementation, if applicable, must be solid and must not complicate
   the interpreter unduly.  Finally, a proposed enhancement must be
   "pythonic" in order to be accepted by the BDFL.  (However, "pythonic"
   is an imprecise term; it may be defined as whatever is acceptable to
   the BDFL.  This logic is intentionally circular.)  See PEP 2 [2]_ for
   standard library module acceptance criteria.

PEPが受理されるためには、最低限の評価基準を満たしている必要があります。提案されている機能拡張に関する説明が明白で、完成されていなければなりません。その拡張は、最終的な改善点にまで言及していなければなりません。もし可能であれば、提案された実装はインタプリタの実装を過度の複雑化させないようにしなければなりません。最後に、BDFLに受け入れられるにはその機能拡張提案は"Pythonic"でなければなりません。(しかし"Pythonic"という用語には厳格な意味がありません。BDFLが受理するものであれば"Pythonic"であるという定義になっています。この論理の循環は意図的なものです) 標準ライブラリモジュールの受理の判定基準に関しては、PEP 2 [2]_ を参照してください。

.. Once a PEP has been accepted, the reference implementation must be
   completed.  When the reference implementation is complete and accepted
   by the BDFL, the status will be changed to "Final".

PEPが受理されたら、参照実装を完成させなければなりません。参照実装が完成し、BDFLがそれを受理すると、ステータスが"Final"になります。

.. A PEP can also be assigned status "Deferred".  The PEP author or
   editor can assign the PEP this status when no progress is being made
   on the PEP.  Once a PEP is deferred, the PEP editor can re-assign it
   to draft status.

PEPのステータスに"延期(Deferred)"が設定されることがあります。PEP作者と編集者は、PEPの作成に関して進捗がない場合には、PEPのステータスをこの状態に設定することができます。一度延期されると、PEP編集者が状態をさらに"ドラフト"に再設定することもあります。

.. A PEP can also be "Rejected".  Perhaps after all is said and done it
   was not a good idea.  It is still important to have a record of this
   fact.

PEPは"否認(Rejected)"されることもあります。おそらく、なんといってもその提案が名案ではなかったということです。しかし、この事実の記録を残しておくということは大切です。

.. PEPs can also be replaced by a different PEP, rendering the original
   obsolete.  This is intended for Informational PEPs, where version 2 of
   an API can replace version 1.

PEPでは、オリジナルのPEPを廃止して、異なるPEPに置き換えることもできます。このフローは主にInformational PEPを意図して設定されています。APIのバージョン2を作成して、バージョン1のPEPを置き換える、ということができます。

.. The possible paths of the status of PEPs are as follows:

PEPのステータスの移行可能な経路は次のようになっています。

.. image:: pep-0001-1.png

.. Some Informational and Process PEPs may also have a status of "Active"
   if they are never meant to be completed.  E.g. PEP 1 (this PEP).

いくつかのInformational PEPとProcess PEPでは、PEP 1(このPEP)のように完成させることを意図していない場合には、"Active"という状態になることもあります。

.. What belongs in a successful PEP?
   =================================

成功しているPEPには何が含まれているのか？
=========================================

.. Each PEP should have the following parts:

それぞれのPEPには次のような項目が含まれます。

.. 1. Preamble -- RFC 822 style headers containing meta-data about the
      PEP, including the PEP number, a short descriptive title (limited
      to a maximum of 44 characters), the names, and optionally the
      contact info for each author, etc.

1. 前文 -- PEPのメタデータを含む、RFC 822スタイルのヘッダです。PEP番号、短いタイトル(最大44文字)、著者の名前(連絡先は任意)などを含みます。

.. 2. Abstract -- a short (~200 word) description of the technical issue
      being addressed.

2. 要約 -- 最大で200語の短い説明です。技術的な課題についても言及します。

.. 3. Copyright/public domain -- Each PEP must either be explicitly
      labelled as placed in the public domain (see this PEP as an
      example) or licensed under the `Open Publication License`_.

3. 著作権/パブリックドメイン -- それぞれのPEPは、このPEPのようにパブリックドメインに属していることを明示するか、 `Open Publication License`_ としてライセンスする必要があります。

.. 4. Specification -- The technical specification should describe the
      syntax and semantics of any new language feature.  The
      specification should be detailed enough to allow competing,
      interoperable implementations for any of the current Python
      platforms (CPython, Jython, Python .NET).

4. 仕様 -- 新しい言語の機能の文法、意味などについて説明した、技術的な仕様書です。仕様は、議論ができるように詳しく書きます。また、あらゆるPythonのプラットフォーム(CPython, Jython, Python.NET)のそれぞれで実装可能でなければなりません。

.. 5. Motivation -- The motivation is critical for PEPs that want to
      change the Python language.  It should clearly explain why the
      existing language specification is inadequate to address the
      problem that the PEP solves.  PEP submissions without sufficient
      motivation may be rejected outright.

5. 動機 -- Pythonの言語を変更しようとしているPEPの場合には、動機が大切です。この動機の説明の中では、そのPEPが解決する問題を取り扱う時に既存のPythonの言語仕様ではどのような不足があるのか、というのを明確にしなければなりません。十分な動機がないPEPは無条件に否認されるでしょう。

.. 6. Rationale -- The rationale fleshes out the specification by
      describing what motivated the design and why particular design
      decisions were made.  It should describe alternate designs that
      were considered and related work, e.g. how the feature is supported
      in other languages.

      The rationale should provide evidence of consensus within the
      community and discuss important objections or concerns raised
      during discussion.

6. 論理的根拠 -- 論理的根拠は仕様を補足する説明です。デザインの動機付けとなったもの、なぜそのデザインに決定したのか、などについて説明します。また、デザインの別案や、同様の機能が他の言語でどのようにサポートされているのかという関連の説明についても触れなければなりません。

   論理的根拠では、コミュニティ内でのコンセンサスの証拠、議論の中で出された重要な反論、議論の中で話題になったことなどについても触れなければなりません。

.. 7. Backwards Compatibility -- All PEPs that introduce backwards
      incompatibilities must include a section describing these
      incompatibilities and their severity.  The PEP must explain how the
      author proposes to deal with these incompatibilities.  PEP
      submissions without a sufficient backwards compatibility treatise
      may be rejected outright.

7. 後方互換性 -- 後方互換性を保てない変更を加えるすべてのPEPには、どのような非互換性があるのか、互換性を保つのがなぜ難しいのかというのを説明するセクションが必要です。PEPでは、作者の提案ではどのようにこの非互換性を取り扱うのか、という説明をしなければなりません。後方互換性について十分な説明のないPEPは無条件に否認されるでしょう。

.. 8. Reference Implementation -- The reference implementation must be
      completed before any PEP is given status "Final", but it need not
      be completed before the PEP is accepted.  It is better to finish
      the specification and rationale first and reach consensus on it
      before writing code.

      The final implementation must include test code and documentation
      appropriate for either the Python language reference or the
      standard library reference.

8. 参考実装 -- 参考実装は、PEPのステータスが"Final"になる前に完成していなければなりませんが、PEPが受理されるまでは完成させる必要はありません。仕様と論理的根拠についてのコンセンサスをまず取る方が良いでしょう。

   最終的な実装にはテストコードと、Pythonの言語リファレンスや標準ライブラリリファレンスとして適切に取り込めるようなドキュメントも含まなければなりません。

.. PEP Formats and Templates
   =========================

PEPのフォーマットとテンプレート
===============================

.. There are two PEP formats available to authors: plaintext and
   reStructuredText_.  Both are UTF-8-encoded text files.

著者が利用できるPEPのフォーマットには2種類あります。プレーンテキストと reStructuredText_ です。どちらもUTF-8でエンコードされたテキストファイルです。

.. Plaintext PEPs are written with minimal structural markup that adheres
   to a rigid style.  PEP 9 contains a instructions and a template [3]_
   you can use to get started writing your plaintext PEP.

プレーンテキストのPEPは、堅いスタイルを堅く守った、構造化された最小のマークアップで書かれます。PEP 9には、この解説と、プレーンテキストのPEPを書き始めるのに使用可能なテンプレート [3]_ が含まれます。

.. ReStructuredText_ PEPs allow for rich markup that is still quite easy
   to read, but results in much better-looking and more functional HTML.
   PEP 12 contains instructions and a template [4]_ for reStructuredText
   PEPs.

reStructuredText_ のPEPは読みやすさを維持しつつ、より見た目が良く、機能的なHTMLが生成可能な、豊富なマークアップが利用できます。PEP 12には、解説とreStructuredTextのPEPのためのテンプレート [4]_ が含まれます。

.. There is a Python script that converts both styles of PEPs to HTML for
   viewing on the web [5]_.  Parsing and conversion of plaintext PEPs is
   self-contained within the script.  reStructuredText PEPs are parsed
   and converted by Docutils_ code called from the script.

両方のスタイルのPEPを、web [5]_ 上で見ることができるHTMLに変換するためのPythonスクリプトがあります。プレーンテキストのPEPをパースして変換する処理はこのスクリプトにふくれまれます。reStructuredTextのPEPのパースと変換をする場合には、スクリプトから Docutils_ のコードを呼び出して行われます。

.. PEP Header Preamble
   ===================

PEPヘッダー前文
===============

.. Each PEP must begin with an RFC 822 style header preamble.  The headers
   must appear in the following order.  Headers marked with "*" are
   optional and are described below.  All other headers are required. 

PEPは、RFC 822のスタイルのヘッダー前文から書き始める必要があります。ヘッダーは次のような順番で書かれなければなりません。"*"記号のついたヘッダーはオプションです。後で説明します。それ以外のヘッダーは必須です。

..  PEP: <pep number>
    Title: <pep title>
    Version: <svn version string>
    Last-Modified: <svn date string>
    Author: <list of authors' real names and optionally, email addrs>
  * Discussions-To: <email address>
    Status: <Draft | Active | Accepted | Deferred | Rejected |
             Withdrawn | Final | Replaced>
    Type: <Standards Track | Informational | Process>
  * Content-Type: <text/plain | text/x-rst>
  * Requires: <pep numbers>
    Created: <date created on, in dd-mmm-yyyy format>
  * Python-Version: <version number>
    Post-History: <dates of postings to python-list and python-dev>
  * Replaces: <pep number>
  * Replaced-By: <pep number>
  * Resolution: <url>

..  PEP: <PEP番号>
    Title: <PEPタイトル>
    Version: <SubVersionのバージョン番号>
    Last-Modified: <SubVersionの日時文字列>
    Author: <作者の本名のリスト。オプションでEメールアドレス>
  * Discussions-To: <Eメールアドレス>
    Status: <Draft | Active | Accepted | Deferred | Rejected |
             Withdrawn | Final | Replaced>
    Type: <Standards Track | Informational | Process>
  * Content-Type: <text/plain | text/x-rst>
  * Requires: <PEP番号>
    Created: <dd-mmm-yyyyフォーマットの、作成された日時>
  * Python-Version: <バージョン番号>
    Post-History: <Python-ListやPython-Devに投稿した日時>
  * Replaces: <PEP番号>
  * Replaced-By: <PEP番号>
  * Resolution: <URL>

.. The Author header lists the names, and optionally the email addresses
   of all the authors/owners of the PEP.  The format of the Author header
   value must be

作者のヘッダには、すべてのPEPの作者/オーナーの名前と、オプションでEメールアドレスを列挙します。作者のヘッダは、Eメールアドレス付きの場合には次のようなフォーマットで書かなければなりません。

    Random J. User <address@dom.ain>

.. if the email address is included, and just

メールアドレスなしの場合には次のように書きます。

    Random J. User

.. if the address is not given.  For historical reasons the format
   "address@dom.ain (Random J. User)" may appear in a PEP, however new
   PEPs must use the mandated format above, and it is acceptable to
   change to this format when PEPs are updated.

過去の経緯から、"address@dom.ain (Random J. User)"という形式で書かれたPEPも数多くありますが、PEPを新しく作成する場合には上記で説明したような表記にしてください。また、PEPをアップデートする場合には、上記のフォーマットに変更することも可能です。

.. If there are multiple authors, each should be on a separate line
   following RFC 2822 continuation line conventions.  Note that personal
   email addresses in PEPs will be obscured as a defense against spam
   harvesters.

もし作者が複数いる場合には、RFC 2822の行連結規則に従って、複数行に分けて記述してください。PEP内のEメールアドレスは、スパムメール業者対策として、少し変更された表現で表示されます。

.. *Note: The Resolution header is required for Standards Track PEPs
   only.  It contains a URL that should point to an email message or
   other web resource where the pronouncement about the PEP is made.*

.. note::
   Standards Track PEPにのみ、Resolutionヘッダーが必要となります。これは、PEPに関する発表を行ったEメールのメッセージもしくはその他のWebのリソースへのURLを含みます。

.. While a PEP is in private discussions (usually during the initial
   Draft phase), a Discussions-To header will indicate the mailing list
   or URL where the PEP is being discussed.  No Discussions-To header is
   necessary if the PEP is being discussed privately with the author, or
   on the python-list or python-dev email mailing lists.  Note that email
   addresses in the Discussions-To header will not be obscured.

通常、初期のドラフトのフェーズで行われるように、PEPが公に議論されていない時には、Discussions-Toヘッダーに、議論を行っているメーリングリストや、URLを記載します。作者がプライベートで議論している場合や、python-list, python-devといったメーリングリストで議論している場合にはDiscussions-Toヘッダーは必要ありません。Discussions-Toヘッダーに書いたEメールアドレスは少し変更された形式で表現されます。

.. The Type header specifies the type of PEP: Standards Track,
   Informational, or Process.

Typeヘッダーには、PEPの種類(Standards Track, Informational, Process)を指定します。

.. The format of a PEP is specified with a Content-Type header.  The
   acceptable values are "text/plain" for plaintext PEPs (see PEP 9 [3]_)
   and "text/x-rst" for reStructuredText PEPs (see PEP 12 [4]_).
   Plaintext ("text/plain") is the default if no Content-Type header is
   present.

PEPのフォーマットはContent-Typeヘッダーで指定します。指定できる値は、プレーンテキストのPEP(PEP 9 [3]_ 参照)の場合は"text/plain"。reStructuredTextのPEP(PEP 12 [4]_ 参照)の場合には"text/x-rst"を指定します。Content-Typeヘッダーがない場合にデフォルトはプレーンテキスト("text/plain")です。

.. The Created header records the date that the PEP was assigned a
   number, while Post-History is used to record the dates of when new
   versions of the PEP are posted to python-list and/or python-dev.  Both
   headers should be in dd-mmm-yyyy format, e.g. 14-Aug-2001.

Createdヘッダーには、PEPに番号が割り振られた日時を指定します。Post-Historyは、新しいバージョンののPEPをpython-list, python-devあるいは両方に投稿した日時を記録します。両方のヘッダーとも、14-Aug-2001のような、dd-mmm-yyyyというフォーマットで書きます。

.. Standards Track PEPs must have a Python-Version header which indicates
   the version of Python that the feature will be released with.
   Informational and Process PEPs do not need a Python-Version header.

Standards Track PEPの場合には、その機能がリリースされるPythonのバージョンを示す、Python-Versionヘッダーを含めなければなりませんInformational PEPとProcess PEPではPython-Versionヘッダーは不要です。

.. PEPs may have a Requires header, indicating the PEP numbers that this
   PEP depends on.

PEPにはRequiresヘッダーを含めることができます。これは、そのPEPが依存しているPEPの番号を指定します。

.. PEPs may also have a Replaced-By header indicating that a PEP has been
   rendered obsolete by a later document; the value is the number of the
   PEP that replaces the current document.  The newer PEP must have a
   Replaces header containing the number of the PEP that it rendered
   obsolete.

また、最新のドキュメントで古いPEPを置き換えられる場合には、Replaced-Byヘッダーを設定します。値には、現在のPEPを置き換えるPEPの番号を指定します。新しい方のPEPは、置き換えたPEPの番号を指定した、Replacesヘッダーを設定します。

.. Auxiliary Files
   ===============

補助ファイル
============

.. PEPs may include auxiliary files such as diagrams.  Such files must be
   named ``pep-XXXX-Y.ext``, where "XXXX" is the PEP number, "Y" is a
   serial number (starting at 1), and "ext" is replaced by the actual
   file extension (e.g. "png").

PEPにはダイアグラムなどの補助ファイルを含めることができます。これらのファイルは、 ``pep-XXXX-Y.`` という形式の名前にします。"XXXX"はPEPの番号で、"Y"は1から始まる連続した数値です。"ext"は"png"などの、実際のファイルの拡張に置き換えてください。

.. Reporting PEP Bugs, or Submitting PEP Updates
   =============================================

PEPのバグの報告/更新の投稿
==================================

.. How you report a bug, or submit a PEP update depends on several
   factors, such as the maturity of the PEP, the preferences of the PEP
   author, and the nature of your comments.  For the early draft stages
   of the PEP, it's probably best to send your comments and changes
   directly to the PEP author.  For more mature, or finished PEPs you may
   want to submit corrections to the Python `issue tracker`_ so that your
   changes don't get lost.  If the PEP author is a Python developer, assign the
   bug/patch to him, otherwise assign it to the PEP editor.

どのようにPEPのバグを報告したり、更新を投稿するかは、PEPの成熟度、PEP作者の好み、送ろうとしているコメントの性質によって異なります。PEPが初期のドラフト段階であれば、直接PEPの作者にコメントや変更点を送るのがベストでしょう。ステータスが先に進んでいる場合や、完了しているPEPに対してコメントを送る場合には、Pythonの `issue tracker`_ を使うと、内容が保存されるため、望ましいでしょう。もしもPEPの作者がPython開発者の場合には、"bug/patch"を彼に設定します。そうでない場合には、PEP編集者を設定します。

.. When in doubt about where to send your changes, please check first
   with the PEP author and/or PEP editor.

どちらに送るかわからない場合には、まず最初にPEPの作者および編集者、あるいは両方に確認してください。

.. PEP authors who are also Python committers can update the
   PEPs themselves by using "svn commit" to commit their changes.

PEP作者がPythonコミッターであれば、"svn commit"を使用して自分でPEPの変更をコミットすることで、更新をかけることもできます。

.. Transferring PEP Ownership
   ==========================

PEPの所有権の譲渡
=================

.. It occasionally becomes necessary to transfer ownership of PEPs to a
   new champion.  In general, we'd like to retain the original author as
   a co-author of the transferred PEP, but that's really up to the
   original author.  A good reason to transfer ownership is because the
   original author no longer has the time or interest in updating it or
   following through with the PEP process, or has fallen off the face of
   the 'net (i.e. is unreachable or not responding to email).  A bad
   reason to transfer ownership is because you don't agree with the
   direction of the PEP.  We try to build consensus around a PEP, but if
   that's not possible, you can always submit a competing PEP.

時々、PEPの所有権を新しいチャンピオンに譲渡しなければならない場面があるでしょう。我々としては、共著者として、PEPの原作者の名前も残した方が良いと考えますが、そうするかどうかは原作者の考え方次第です。所有権を譲渡する理由として適切なのは、原作者がそのPEPを更新したり、完成させたりする時間、もしくは興味がなくなった、メールに応答できないなど、ネットが使用できる環境から遠ざかっている、などがあります。PEPの方向性に同意できないから、というのは良くなり理由です。PEPの作者はできるだけコンセンサスを取ろうと努力しますが、もしそれができないのであれば、対抗案のPEPを投稿することもできます。

.. If you are interested in assuming ownership of a PEP, send a message
   asking to take over, addressed to both the original author and the PEP
   editor <peps@python.org>.  If the original author doesn't respond to
   email in a timely manner, the PEP editor will make a unilateral
   decision (it's not like such decisions can't be reversed :).

PEPの所有権を引き受けたい場合には、原作者とPEP編集者<peps@python.org>の両方に、引き継ぐことができないか問い合わせるメールを送ってください。もし、常識的な期間の範囲内で原作者がメールの返信を返さない場合には、PEP編集者が一方的に決定を行うこともあります。ただし、この決定はひっくり返すことも可能です:)。

.. PEP Editor Responsibilities & Workflow
   ======================================

PEP編集者の責務とワークフロー
=============================

.. A PEP editor must subscribe to the <peps@python.org> list.  All
   PEP-related correspondence should be sent (or CC'd) to
   <peps@python.org> (but please do not cross-post!).

PEP編集者は<peps@python.org>メーリングリストに参加しなければなりません。PEPに関連するメールのやりとりはかならず<peps@python.org>に、もしくはCCで送ってください。ただし、クロスポストは行わないでください。

.. For each new PEP that comes in an editor does the following:

新しく来たPEPごとに、編集者は次のようなことを行います。

.. * Read the PEP to check if it is ready: sound and complete.  The ideas
     must make technical sense, even if they don't seem likely to be
     accepted.

* PEPを読み、準備が整っているかチェックします。そのアイディアが受け入れられそうかどうかに関わらず、PEPのアイディアが技術的に意味を持っているかどうか確認します。

.. * The title should accurately describe the content.

* 内容を正確に説明しているタイトルを付けます。

.. * Edit the PEP for language (spelling, grammar, sentence structure,
     etc.), markup (for reST PEPs), code style (examples should match PEP
     8 & 7).

* 自然言語(スペルや文法、構文)、マークアップ(reST PEPの場合)、コードスタイル(サンプルコードがPEP 8&7にマッチしているか？)という観点でPEPの編集を行います。

.. If the PEP isn't ready, the editor will send it back to the author for
   revision, with specific instructions.

もしも、PEPの準備ができていない場合には、編集者は変更してもらうために、指示を付けて作者に送り返します。

.. Once the PEP is ready for the repository, the PEP editor will:

PEPがリポジトリに格納する準備ができると、PEP編集者は次のようなことを行います:

.. * Assign a PEP number (almost always just the next available number,
     but sometimes it's a special/joke number, like 666 or 3141).

* PEPの番号を割り振ります。ほとんどの場合は、利用可能な最小の数値を指定しますが、666や3141のように、時々特別な/ジョークの番号が付けられます。

.. * List the PEP in PEP 0 (in two places: the categorized list, and the
     numeric list).

* PEPをPEP 0のリストに追加します。カテゴリーリストと、番号リストの2箇所追加します。

.. * Add the PEP to SVN.  For Subversion repository instructions, see `the FAQ for Developers
     <http://www.python.org/dev/faq/#how-do-i-get-a-checkout-of-the-repository-read-only-and-read-write>`_.

     The command to check out a read-only copy of the repository is::

         svn checkout http://svn.python.org/projects/peps/trunk peps

     The command to check out a read-write copy of the repository is::

         svn checkout svn+ssh://pythondev@svn.python.org/peps/trunk peps

     In particular, the ``svn:eol-style`` property should be set to ``native``
     and the ``svn:keywords`` property to ``Author Date Id Revision``.

* PEPをSVNに追加します。Subversionのリポジトリの使い方の説明に関しては、 `the FAQ for Developers
  <http://www.python.org/dev/faq/#how-do-i-get-a-checkout-of-the-repository-read-only-and-read-write>`_ を参照してください。

  読み込み専用でリポジトリをチェックアウトするには次のようにタイプします::

      svn checkout http://svn.python.org/projects/peps/trunk peps

  読み書き両方できる形でチェックアウトするには次のようにタイプします::

      svn checkout svn+ssh://pythondev@svn.python.org/peps/trunk peps

  ``svn:eol:style`` プロパティは ``native`` に、 ``svn:keywords`` プロパティには ``Author Date Id Revision`` を設定してください。

.. * Monitor python.org to make sure the PEP gets added to the site
     properly.

* python.orgをモニターして、PEPがpython.orgに適切に追加されているかを確認します。

.. * Send email back to the PEP author with next steps (post to
     python-list & -dev/-3000).

* 次の段階に入ったという情報をPEP作者に送ります。python-list, python-dev, python-3000にも投稿します。

.. Updates to existing PEPs also come in to peps@python.org.  Many PEP
   authors are not SVN committers yet, so we do the commits for them.

既存のPEPのアップデートについても、peps@python.orgに連絡が来ます。多くのPEP作者はSVNのコミット権限を持っていないため、PEP編集者がコミットを行います。

.. Many PEPs are written and maintained by developers with write access
   to the Python codebase.  The PEP editors monitor the python-checkins
   list for PEP changes, and correct any structure, grammar, spelling, or
   markup mistakes we see.

Pythonのコードベースへの書き込み権限を持っている開発者が書いたり、メンテナンスしているPEPも数多くあります。PEP編集者はpython-checkinsメーリングリストをモニターし、PEPの変更を確認します。構文や文法、スペル、マークアップのミスを見つけたら修正を加えます。

.. The editors don't pass judgement on PEPs.  We merely do the
   administrative & editorial part.  Except for times like this, there's
   relatively low volume.

編集者はPEPの判断は行いません。編集者が行うのは、管理と編集の部分になります。PEP 1のような場合を除き、作業のボリュームはそれほど多くはありません。

.. Resources:

リソース:

* `How Python is Developed <http://www.python.org/dev/intro/>`_

* `Python's Development Process <http://www.python.org/dev/process/>`_

* `Why Develop Python? <http://www.python.org/dev/why/>`_

* `Development Tools <http://www.python.org/dev/tools/>`_

* `Frequently Asked Questions for Developers
  <http://www.python.org/dev/faq/>`_


.. References and Footnotes
   ========================

参照と脚注
==========

.. [1] This historical record is available by the normal SVN commands
   for retrieving older revisions.  For those without direct access to
   the SVN tree, you can browse the current and past PEP revisions here:
   http://svn.python.org/view/peps/trunk/

.. [2] PEP 2, Procedure for Adding New Modules, Faassen
   (http://www.python.org/dev/peps/pep-0002)

.. [3] PEP 9, Sample Plaintext PEP Template, Warsaw
   (http://www.python.org/dev/peps/pep-0009)

.. [4] PEP 12, Sample reStructuredText PEP Template, Goodger, Warsaw
   (http://www.python.org/dev/peps/pep-0012)

.. [5] The script referred to here is pep2pyramid.py, the successor to
   pep2html.py, both of which live in the same directory in the SVN
   tree as the PEPs themselves.  Try ``pep2html.py --help`` for
   details.  The URL for viewing PEPs on the web is
   http://www.python.org/dev/peps/.

.. _issue tracker:
   http://bugs.python.org/

.. _Open Publication License: http://www.opencontent.org/openpub/

.. _reStructuredText: http://docutils.sourceforge.net/rst.html

.. _Docutils: http://docutils.sourceforge.net/


.. Copyright
   =========

著作権
======

.. This document has been placed in the public domain.

このドキュメントはパブリック・ドメインに属します。

..
   Local Variables:
   mode: indented-text
   indent-tabs-mode: nil
   sentence-end-double-space: t
   fill-column: 70
   coding: utf-8
   End:
