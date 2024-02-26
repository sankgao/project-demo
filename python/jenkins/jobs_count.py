import jenkins


jenkins_server = 'http://192.168.4.151:8080'
username = 'admin'
api_token = '110a85fd0d97460f6685042341bf677517'
server = jenkins.Jenkins(jenkins_server, username, api_token)

count = server.jobs_count()  # 获取 Jenkins job 总数
print('jobs_count: %d' % count)
