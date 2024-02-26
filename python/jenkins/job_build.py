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

last_build_number = server.get_job_info('test')['lastCompletedBuild']['number']
build_info = server.get_build_info('test', last_build_number)
parameters = build_info['actions'][0]['parameters']

for i in parameters:
    print('name: %-35s value: %s' % (i['name'], i['value']))
