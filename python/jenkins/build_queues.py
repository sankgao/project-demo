import jenkins


jenkins_server = 'http://192.168.4.151:8080'
username = 'admin'
api_token = '110a85fd0d97460f6685042341bf677517'
server = jenkins.Jenkins(jenkins_server, username, api_token)

server.build_job('test', {'BR_NAME': 'master'})
queue_info = server.get_queue_info()  # 获取排队的构建信息
print(queue_info)
id = queue_info[0].get('id')
print(id)
server.cancel_queue(id)  # 取消排队的构建
