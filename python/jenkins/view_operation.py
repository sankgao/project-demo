import jenkins


jenkins_server = 'http://192.168.4.151:8080'
username = 'admin'
api_token = '110a85fd0d97460f6685042341bf677517'
server = jenkins.Jenkins(jenkins_server, username, api_token)

# server.create_view('EMPTY', jenkins.EMPTY_VIEW_CONFIG_XML)  # 创建 EMPTY 视图
# view_config = server.get_view_config('EMPTY')  # 获取 EMPTY 视图配置
# print(view_config)

# server.delete_view('EMPTY')  # 删除 EMPTY 视图

views = server.get_views()  # 获取全部视图列表
print(views)

