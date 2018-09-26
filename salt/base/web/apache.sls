apache: 
  pkg.installed:
    - name: httpd
  service.running.running:
    - name: httpd

/etc/httpd/conf/httpd.conf
  file.managed:
    - source: salt://apache/files/httpd.conf
    - user: root
    - group: root
    - mode: 644
/etc/httpd/conf/php.conf
  file.managed:
    - source: salt://apache/files/php.conf
    - user: root
    - group: root
    - mode: 644

