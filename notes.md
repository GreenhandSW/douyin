## 创建数据库

### 创建mysql镜像

创建数据库脚本如下：

```mysql
# douyin.sql
create schema douyin collate utf8mb4_unicode_ci;
```

创建Dockerfile如下：

```dockerfile
FROM mysql:latest
MAINTAINER GreenhandSW

# 数据卷
VOLUME /var/lib/mysql
VOLUME /var/log/mysql

ENV MYSQL_ROOT_PASSWORD bytedance
ADD douyin.sql /docker-entrypoint-initdb.d
EXPOSE 3306
```

把上面两个文件放在`./db/mysql/`目录下



# 参考资料

[^ 1]: [Creating MySQL Image with Docker File](https://jojozhuang.github.io/architecture/creating-mysql-image-with-docker-file)

