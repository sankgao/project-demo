import jenkins


jenkins_server = 'http://192.168.4.151:8080'
username = 'admin'
api_token = '110a85fd0d97460f6685042341bf677517'
server = jenkins.Jenkins(jenkins_server, username, api_token)

server.build_job(
    'test', {
        'BR_NAME': 'master',
        'TCSD_BRASH_NAME': 'branch_HTB25_33WA_RTM_BASE',
        'flash_secdata_part': False,
    }
)

queue_info = server.get_queue_info()  # 获取排队的构建信息
print(queue_info)

parameters = queue_info[0]['actions'][0]['parameters']  # 获取指定构建的参数

for i in parameters:
    print('name: %-35s value: %s' % (i['name'], i['value']))
