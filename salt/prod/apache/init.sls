apache-install:
  pkg.installed:
    - name: httpd

apache-config:
  file.managed:
    - name: /etc/httpd/conf/httpd.conf
    - source: salt://apache/files/httpd.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - defaults:
      PORT: 80
      IPADDR: {{ grains['fqdn_ip4'][0] }}

#apache-auth:
#  pkg.installed:
#    - name: httpd-tools
#  cmd.run:
#    - name: htpasswd -bc /etc/httpd/conf/htpasswd_file admin admin
#    - unless: test -f /etc/httpd/conf/htpasswd_file

apache-service: 
  service.running:
    - name: httpd
    - enable: True
    - reload: True
    - watch: 
      - file: apache-config
