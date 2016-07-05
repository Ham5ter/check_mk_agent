# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "check_mk_agent/map.jinja" import check_mk_agent with context %}

check_mk_agent.package:
  pkg.installed:
    - name: check-mk-agent

xinetd.package:
  pkg.installed:
    - name: xinetd

xinetd.service:
  service.running:
    - name: xinetd
    - enable: True
    - require:
      - pkg: check-mk-agent
      - pkg: xinetd
