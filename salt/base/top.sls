#base:
#  'os:CentOS':
#    - match: grain    
#    - web.apache
#prod:
#  'node*':
#    - lamp
#    - apache.init
#    - php.init
#    - mysql.init
prod:
  'node1':
    - lamp
    - redis.master
  'node2':
    - lamp
    - redis.slave
