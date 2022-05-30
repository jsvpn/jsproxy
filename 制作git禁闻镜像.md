# 制作Github项目镜像，并定时同步的方法  

说明：因为国产浏览器和微信可能已屏蔽本项目的网址，所以推广时不太方便，所以如果制作一个本项目的镜像，得到一个新的网址，并定时同步，则更方便推广。  

1、注册一个github.com账号，并登录；  

2、打开 https://github.com/jsvpn/jsproxy/

3、点右上角的Fork链接，fork完成后就得到了一个你自己的git禁闻的镜像网址。  

但是fork的镜像不会自动跟随源项目而更新，怎么办呢？有2种办法:  

方法1、每天手工更新，具体方法是删掉fork的项目，重新fork一下，就是最新的了。  

具体是在Fork后的项目页面的顶部偏右的位置，有个Setting链接，点击Setting链接后，滚动到页面底部，点“Delete this repository”按钮，删除后重新Fork即可。  

方法2、定时自动同步  

你需要一台 **墙外（因为安全的原因,必须墙外）** 的Windows电脑或者Linux VPS,以Linux(Debian 10) VPS为例，首先，用ssh客户端登录linux，然后执行下列命令安装git工具：  
```  
apt update  
apt install git  
```  

如果是windows电脑，请安装 [Git for Windows](https://git-scm.com/download/win)  

然后，使用 SSH 连接到你的 GitHub账号(利用 SSH 密钥可以连接 GitHub，而无需在每次访问时提供用户名或密码，方便定时更新git禁闻镜像)  
参考:  
https://docs.github.com/cn/github/authenticating-to-github/connecting-to-github-with-ssh  

然后 Linux 则依次执行下列命令（一行一行依次拷贝执行,注意将your-github-username换作你自己的github用户名）：  
```  
cd /root  
git config --global core.autocrlf input  
git clone git@github.com:your-github-username/bnews.git  
cd bnews  
chmod +x syncnews.sh  
git remote add upstream https://github.com/fqnews/bnews.git  
```  

然后将脚本 `/root/bnews/syncnews.sh` 加到你的linux crontab 里面定时执行即可。  

Windows 则先打开Git CMD命令行，依次执行下列命令：  
```  
git config --global core.autocrlf true  
git clone git@github.com:your-github-username/bnews.git  
cd bnews  
git remote add upstream https://github.com/fqnews/bnews.git  
```  
这时，在当前这个 bnews 目录下会有一个 syncnews.bat 命令脚本，把这个命令脚本加入到windows的任务计划程序定时执行即可。  

# 翻墙-科学上网、翻墙工具、翻墙教程项目库。  

*   **[安卓翻墙新闻APP(FQNews APP)](https://github.com/bannedbook/fanqiang/wiki/%E7%A6%81%E9%97%BB%E7%BD%91%E5%AE%89%E5%8D%93%E7%BF%BB%E5%A2%99%E6%96%B0%E9%97%BBAPP)**
*   **[禁闻浏览器（JWBrowser）](https://github.com/bannedbook/fanqiang/wiki/%E5%AE%89%E5%8D%93%E7%BF%BB%E5%A2%99%E8%BD%AF%E4%BB%B6#JWBrowser)**
*   **[安卓翻墙软件](https://github.com/bannedbook/fanqiang/wiki/%E5%AE%89%E5%8D%93%E7%BF%BB%E5%A2%99%E8%BD%AF%E4%BB%B6)**
*   **[Chrome一键翻墙包](https://github.com/bannedbook/fanqiang/wiki/Chrome%E4%B8%80%E9%94%AE%E7%BF%BB%E5%A2%99%E5%8C%85)**
*   **[火狐firefox一键翻墙包](https://github.com/bannedbook/fanqiang/wiki/%E7%81%AB%E7%8B%90firefox%E4%B8%80%E9%94%AE%E7%BF%BB%E5%A2%99%E5%8C%85)**
*   **[免翻墙：每日热点禁闻](https://github.com/fqnews/bnews/blob/master/readme.md)**
*   **[自建V2ray服务器翻墙简明教程](https://github.com/bannedbook/fanqiang/blob/master/v2ss/%E8%87%AA%E5%BB%BAV2ray%E6%9C%8D%E5%8A%A1%E5%99%A8%E7%AE%80%E6%98%8E%E6%95%99%E7%A8%8B.md)**
*   **[自建Shadowsocks服务器翻墙简明教程](https://github.com/bannedbook/fanqiang/blob/master/v2ss/%E8%87%AA%E5%BB%BAShadowsocks%E6%9C%8D%E5%8A%A1%E5%99%A8%E7%AE%80%E6%98%8E%E6%95%99%E7%A8%8B.md)**
*   **[免费ss账号](https://github.com/bannedbook/fanqiang/wiki/%E5%85%8D%E8%B4%B9ss%E8%B4%A6%E5%8F%B7)**
*   **[v2ray免费账号](https://github.com/bannedbook/fanqiang/wiki/v2ray%E5%85%8D%E8%B4%B9%E8%B4%A6%E5%8F%B7)**
*   **[Goflyway免费账号](https://github.com/bannedbook/fanqiang/wiki/Goflyway%E5%85%8D%E8%B4%B9%E8%B4%A6%E5%8F%B7)**
*   **[苹果电脑MAC翻墙](https://github.com/bannedbook/fanqiang/wiki/%E8%8B%B9%E6%9E%9C%E7%94%B5%E8%84%91MAC%E7%BF%BB%E5%A2%99)**
*   **[iphone翻墙](https://github.com/bannedbook/fanqiang/wiki/iphone%E7%BF%BB%E5%A2%99)**
*   **[TorBrowser一键翻墙包](https://github.com/bannedbook/fanqiang/wiki/TorBrowser%E4%B8%80%E9%94%AE%E7%BF%BB%E5%A2%99%E5%8C%85)**  

# ChromeGo - Chrome一键翻墙包  

一个集成Goflyway、v2ray、Daze、SSR、Brook、Lightsocks、trojan、蓝灯、psiphon等N多翻墙工具的电脑翻墙包（推荐按前面所列顺序依次尝试），所有工具全部内置免费服务器，长期更新。由于国内网络环境复杂、地区不同，网络运营商不同，封锁情况都不同，所以使用效果会有差别，有的地区几乎所有的软件都能使用，有的只能用几款，因此具体哪款软件适合你的网络环境，需要你自己来尝试。  

**推荐：**  

[![搬瓦工翻墙 Just My Socks](https://raw.githubusercontent.com/killgcd/justmysocks/master/images/bwgss.jpg)](https://github.com/killgcd/justmysocks/blob/master/README.md)  

**下载PC翻墙软件：[Chrome一键翻墙包](https://github.com/bannedbook/fanqiang/wiki/Chrome%E4%B8%80%E9%94%AE%E7%BF%BB%E5%A2%99%E5%8C%85)**，下载后打开ChromeGo目录启动翻墙脚本。  

**使用Chrome一键翻墙包**  

请首先自行安装Google Chrome 浏览器，然后下载本软件，本软件会自动调用Google Chrome 浏览器翻墙。  
下载本项目后，解压出来，请不要解压到含有中文或空格的目录路径，请不要不解压就直接从压缩包里运行！不解压会出错！  
下载后，请认真阅读里面的使用帮助说明，然后 **0.xx-10.xx翻墙** 可依次尝试。  

**版权声明**  

请随意分发，勿做商业使用。