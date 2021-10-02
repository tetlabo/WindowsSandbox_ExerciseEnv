# Windows Sandboxを使い、プログラミング研修でありがちな環境を整える設定ファイル群

<p align="right">
<a href="https://mana.bi/">田中 健太</a>
</p>

ファイルを所定の場所に配置し、ダブルクリックするだけで、RまたはPythonプログラミングの研修でありがちな実習環境が整います。

[![Python環境を構築する様子](https://img.youtube.com/vi/_fO-Mbb8vnU/0.jpg)](https://www.youtube.com/watch?v=_fO-Mbb8vnU)

## バリエーション

### VSCode.wsb

以下のソフトウェアをインストールします。

* Windows Package Manager (winget)
* Visual Studio Code
* Google Chrome
* Git
* GitHub LFS


### VSCode_Python.wsb

以下のソフトウェアをインストールします。

* Windows Package Manager (winget)
* Visual Studio Code
* Google Chrome
* Git
* GitHub LFS
* Python 3
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


## VSCode_RStudio.wsb

以下のソフトウェアをインストールします。

* Windows Package Manager (winget)
* Visual Studio Code
* Google Chrome
* Git
* GitHub LFS
* R
* RStudio


[![R環境を構築する様子](https://img.youtube.com/vi/WRM2OOzjCZE/0.jpg)](https://www.youtube.com/watch?v=WRM2OOzjCZE)

## 要件

### Windows Sandbox

実行には、Windows 10において、Windows Sandboxが有効になっている必要があります。Windows Sandboxの有効化については、[「Windowsサンドボックス」の使い方。初めてのアプリを安全な環境で試せる！【Windows Tips】 | できるネット](https://dekiru.net/article/18773/)などを参考にしてください。


### winget-cli

`boot_*.ps1` スクリプト中で、"Windows Package Manager CLI" (`winget`) を使用しています。2021年10月初頭に、Windows Updateで自動的に配信されたようなので、最新の状態まで更新すれば、使用できるようになります。

事情があって、Windows Updateがかけられない場合は、[winget単体でインストール](https://github.com/microsoft/winget-cli/releases/tag/v1.1.12653)することもできます。


## PCのスペック

配布しているファイルでは、Sandbox環境のメモリを8GB (8192MB) に指定しています。そのため、親 (Windows 10) + 子 (Sandbox) で、少なくとも16GB程度のメモリが必要だと思います。Windows 10自体は、4GB程度のメモリでも動くようなので、ファイルの `<MemoryInMB>8192</MemoryInMB>` という部分を書き換えることもできますが、快適に動作するかはわかりません。


## スクリプトを配置するフォルダー

`*.wsb` スクリプト中で、親 (Windows 10) の `C:\temp` フォルダーに `boot_*.ps1` ファイルがあると決め打ちして書いています。そのため、Cドライブ直下に `temp` というフォルダーを作り、そこにこのリポジトリの `boot_*.ps1` ファイルを配置してください。もちろん、必要に応じてパスを書き換えても問題ありません。なお、`*.wsb` ファイルは、どこに置いてもかまいません。


## ライセンス

MITライセンスのもと、自由にお使いいただけますが、**代わりに何か仕事 (研修、教材・書籍執筆など) をいただければうれしいです。**

