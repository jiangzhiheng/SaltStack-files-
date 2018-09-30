include:
  - redis.init

slave-config:
  cmd.run:
    - name: redis-cli -p 6379 slaveof 192.168.0.11 6379
    - require: 
      - service: redis-service
