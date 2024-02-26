import jenkins
import os


# 如果 jenkins 的网站是 https 的方式，那么连接过程中会有证书认证。如果 jenkins 的证书是自签发的，那么是可能连接失败的。
# 可以在连接 jenkins 之前，加入如下代码，不认证证书
# os.environ['PYTHONHTTPSVERIFY'] = '0'

jenkins_server = 'http://192.168.4.151:8080'
username = 'admin'
api_token = '110a85fd0d97460f6685042341bf677517'
# server = jenkins.Jenkins('http://192.168.52.191:8080', username='gaoqingshan', password='119ada6c530254d8136a467b455a6b3989')
server = jenkins.Jenkins(jenkins_server, user_name, api_token)

user = server.get_whoami()  # 获取 Jenkins 用户名
version = server.get_version()  # 获取 Jenkins 版本
print('Hello %s from Jenkins %s' % (user['fullName'], version))
