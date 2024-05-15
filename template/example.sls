{% load_yaml as versions -%}
- 1.0.0
{% endload -%}

example:
  {% for version in versions -%}
  '{{ version }}':
    full_name: Example Application
    installer: https://example.org/example.exe
    install_flags: /S
    uninstaller: '%ProgramFiles%\example\uninstall.exe'
    uninstall_flags: /S
  {% endfor -%}
