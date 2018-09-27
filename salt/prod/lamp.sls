include:
  - apache.init
  - php.init
  - mysql.init

extend:
  php-install:
    pkg.installed:
      - name; php-mbstring
