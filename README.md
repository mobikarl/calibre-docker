## 示例
使用calibre和nginx服务器下载书籍

需要在阿里云香港区域配置启动模版（实例自定义数据中填入user-data.sh文件中的内容）和弹性伸缩组，获取实例的公有ip地址

```shell
# 启动容器
docker-compose up -d

# 访问calibre页面，下载书籍
http://ip:81

# 访问nginx
http://ip:80

# 服务器启动+执行初始化命令，大概需要4分钟
# 可登录服务器查看执行cloud-init命令的输出信息
tail -f /var/log/cloud-init-output.log
```
