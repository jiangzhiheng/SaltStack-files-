/etc/yum.repos.d/epel.repo:
  file.managed:
    - source: salt://init/files/epel.repo
    - user: root
    - group: root
    - mode: 644
