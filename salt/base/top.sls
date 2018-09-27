#base:
#  'os:CentOS':
#    - match: grain    
#    - web.apache
prod:
  'node1':
    - lamp
#    - apache.init
#    - php.init
#    - mysql.init
