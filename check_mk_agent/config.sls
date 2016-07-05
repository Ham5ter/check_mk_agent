# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "check_mk_agent/map.jinja" import check_mk_agent with context %}

check_mk_agent-xinetd-config:
  file.managed:
    - name: {{ check_mk_agent.xinetd_config }}
    - source: salt://check_mk_agent/files/xinetd_check_mk.jinja2
    - mode: 644
    - user: root
    - group: root
    - template: jinja
    - require:
      - pkg: xinetd