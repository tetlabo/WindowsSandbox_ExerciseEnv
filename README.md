# Windows Sandboxを使い、プログラミング研修でありがちな環境を整える設定ファイル群

<p align="right">
<a href="https://mana.bi/">タナカケンタ</a>
</p>

`.wsb` ファイルをダウンロードし、ダブルクリックするだけで、RまたはPythonプログラミングの研修でありがちな実習環境が整います。

Windows Package Manager (`winget`) 版と、chocolatey (`choco`) 版を作成しました。

[![Python環境を構築する様子](https://img.youtube.com/vi/_fO-Mbb8vnU/0.jpg)](https://www.youtube.com/watch?v=_fO-Mbb8vnU)

https://www.youtube.com/watch?v=_fO-Mbb8vnU


## 使用法

このリポジトリから、以下で紹介するバリエーションのうち、要件に合うものを選び、**`.wsb` ファイルのみ** ダウンロードします。そして、ダブルクリックすると、Windows Sandboxが起動し、自動的にGitHubから設定スクリプト (`*.ps1`) をダウンロードし、実行します。

セットアップが完了するまで数分かかりますが、放っておけば、プログラミング研修でありがちな環境が用意できます。


## バリエーション

### 共通設定

各種ロケールを日本語に指定しています。実行のタイミングの関係で、天気・気温の表示など、画面上英語版のままになる要素もあるようです。


### VSCode.wsb

以下のソフトウェアをインストールします。

* Windows Package Manager (winget) / chocolatey (choco)
* Visual Studio Code
* Google Chrome
* Git
* GitHub LFS


### VSCode_Python.wsb

以下のソフトウェアをインストールします。

* Windows Package Manager (winget) / chocolatey (choco)
* Visual Studio Code
* Google Chrome
* Git
* GitHub LFS
* Python 3 (2021-10-15現在、3.9.x)
* 以下のPythonライブラリ (研修で使いがちなもの)
    * numpy
	* pandas
	* matplotlib
	* seaborn
	* scikit-learn
	* notebook
	* jupyterlab
	* chromedriver-binary-auto
	* selenium
	* imbalanced-learn
	* category-encoders
	* autopep8
	* jupyter-contrib-nbextensions
	* pandas-profiling
	* sweetviz
	* apache-log-parser
	* pycgettb
	* pandastable
	* japanize-matplotlib
	* jaconv
	* openpyxl
	* Flask


### VSCode_RStudio.wsb

以下のソフトウェアをインストールします。

* Windows Package Manager (winget) / chocolatey (choco)
* Visual Studio Code
* Google Chrome
* Git
* GitHub LFS
* R
* RStudio


### VSCode_webapp.wsb (chocolatey版のみ)

以下のソフトウェアをインストールします。なお、PostgreSQLのユーザー名とパスワードは `postgres` に設定しています。

* chocolatey (choco)
* Visual Studio Code
* Google Chrome
* Git
* GitHub LFS
* OpenJDK
* Apache HTTP Server
* Apache Tomcat
* PostgreSQL


[![R環境を構築する様子](https://img.youtube.com/vi/WRM2OOzjCZE/0.jpg)](https://www.youtube.com/watch?v=WRM2OOzjCZE)

https://www.youtube.com/watch?v=WRM2OOzjCZE


## 要件

### Windows Sandbox

実行には、Windows 10において、Windows Sandboxが有効になっている必要があります。Windows Sandboxの有効化については、[「Windowsサンドボックス」の使い方。初めてのアプリを安全な環境で試せる！【Windows Tips】 | できるネット](https://dekiru.net/article/18773/)などを参考にしてください。

何やら[Windows 10 Homeでも有効化できるとかナントカ...](https://www.tenforums.com/tutorials/131437-enable-windows-sandbox-feature-windows-10-home-edition.html)


### PCのスペック

配布しているファイルでは、Sandbox環境のメモリを8GB (8192MB) に指定しています。そのため、親 (Windows 10) + 子 (Sandbox) で、少なくとも16GB程度のメモリが必要だと思います。Windows 10自体は、4GB程度のメモリでも動くようなので、ファイルの `<MemoryInMB>8192</MemoryInMB>` という部分を書き換えることもできますが、快適に動作するかはわかりません。


## ライセンス

MITライセンスのもと、自由にお使いいただけますが、**代わりに何か仕事 (研修、教材・書籍執筆など) をいただければうれしいです。**

