install-ntpdate:
  pkg.installed:
    - name: ntpdate

cron-ntpdate:
  cron.present:
    - name: cn.pool.ntp.org
    - user: root
    - minute: '*/5'

