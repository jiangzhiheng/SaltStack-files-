apache-install:
  pkg.installed:
    - name: httpd
    - require_in:
      - service: apache-service

apache-config:
  file.managed:
    - name: /etc/httpd/conf/httpd.conf
    - source: salt://apache/files/httpd.conf
    - user: root
    - group: root
    - mode: 644
    - require_in:
      - service: apache-service

apache-service: 
  service.running:
    - name: httpd
    - enable: True
