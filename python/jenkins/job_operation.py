import jenkins


jenkins_server = 'http://192.168.4.151:8080'
username = 'admin'
api_token = '110a85fd0d97460f6685042341bf677517'
server = jenkins.Jenkins(jenkins_server, username, api_token)

# server.create_job('empty', jenkins.EMPTY_CONFIG_XML)  # 创建 empty job
# jobs = server.get_jobs()  # 获取 job 全部信息
# print(jobs)

# my_job = server.get_job_config('test')  # 获取 test job 的 XML 配置信息
# print(my_job)

# server.build_job('empty')  # 开始构建 empty job
# server.disable_job('empty')  # 禁用 empty job
# server.copy_job('empty', 'empty_copy')  # 克隆 empty job 为 empty_copy job
# server.enable_job('empty_copy')  # 启用 empty_copy job
# server.reconfig_job('empty_copy', jenkins.RECONFIG_XML)  # 重新配置 empty_copy job 的 XML 文件
# server.build_job('test', {'BR_NAME': 'master'})  # 开始构建 test job，并添加参数

# last_build_number = server.get_job_info('test')['lastCompletedBuild']['number']
# build_info = server.get_build_info('test', last_build_number)
# print(last_build_number, build_info)

# my_job = server.get_job_info('test')  # 获取 test job 的全部信息
# print(my_job)

# my_job = server.get_build_info('test', 10)  # 获取 test job 的第 10 个构建信息
# print(my_job) # prints XML configuration

jobs = server.get_jobs(view_name='test')  # 从特定视图获取所有作业
print(jobs)
