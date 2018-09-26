#base:
#  'os:CentOS':
#    - match: grain    
#    - web.apache
prod:
  'node1':
    - apache.init
    - php.init
    - mysql.init
