# nali-fork
# 哪里

nali，名字取自中文“哪里”的拼音。nali包含一组命令行程序，其主要功能就是把一些网络工具的输出的IP字符串，附加上地理位置信息(使用纯真数据库QQWry.Dat)。例如74.125.128.104会变成74.125.128.104[美国 加利福尼亚州山景市谷歌公司]。查询是在本地进行，并不会进行联网查询，所以效率方面不会对原始命令产生什么影响。

** 项目来源于Google Code仓库，已停止维护 **

* nali
* nali-dig
* nali-nslookup
* nali-traceroute
* nali-tracepath
* nali-ping


使用纯真IP库，已升级到2021-06

## Docker 化
编译
```
docker build -t nali .
```


使用
```
docker run -it --rm nali nali-ping baidu.com
```



