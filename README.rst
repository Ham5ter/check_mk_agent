================
check_mk_agent
================

This Saltstack formula manages the Installation of the check_mk_agent and the Configuration of the xinetd Service Configuration.

.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:

``check_mk_agent``
------------

This State installs and Configures the ckeck_mk_agent

``check_mk_agent.install``
------------

This State just installs the check_mk_agent and xinetd package

``check_mk_agent.config``
------------

This State manages the COnfigurationfile of xinited that is used to run the check_mk_agent
