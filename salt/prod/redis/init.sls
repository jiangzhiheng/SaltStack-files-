redis-install:
  pkg.installed:
    - name: redis

redis-config:
  file.managed:
    - name: /etc/redis.conf
    - source: salt://redis/files/redis.conf
    - user: root
    - group: root
    - mode: 644
    - template: jinja
    - default: 
      IPADDR: {{ grains['fqdn_ip4'][0] }}

redis-service:
  service.running:
    - name: redis
    - enable: True
    - reload: True
