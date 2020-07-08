## 镜像制作
### 1 手动
#### package
#### docker build -t eurekaserver .
#### docker run -d --name eurekaServer -p 8761:8761 eurekaserver

## 2 maven插件
执行: mvn package
## 启动
[访问](http://localhost:8761/)