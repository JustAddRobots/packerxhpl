Changelog
=========

0.4.0 (2021-02-01)
------------------
- ISSUE-012: Added postdeploy kubernetes tasks. (fb2634f) [JustAddRobots]
- ISSUE-012: Fixed worker module, ready for hostname/kubernetes update. (2f90dff) [JustAddRobots]
- ISSUE-012: Added esxi terraform provider, removed vix. (792b870) [JustAddRobots]
- ISSUE-012: Added tf bits for testing kubernetes deployment. (f3de94f) [JustAddRobots]
- ISSUE-012: Added kubernetes, jenkins smee, refactored for configs. (4532e8e) [JustAddRobots]
- ISSUE-012: Separated kubernetes, controller/worker playbooks. (88160c3) [JustAddRobots]
- ISSUE-012: Added kubernetes role. (9400caa) [JustAddRobots]

0.3.0 (2021-01-21)
------------------
- ISSUE-010: Added postman role. (1bfe3f3) [JustAddRobots]
- ISSUE-003: Added docker TLS. (69559bc) [JustAddRobots]
- ISSUE-003: Added webmin to playbook. (e0e4c61) [JustAddRobots]
- ISSUE-003: Added webmin role. (569b1d8) [JustAddRobots]
- ISSUE-003: Fixed playbook path. (42333cc) [JustAddRobots]
- ISSUE-003: Added complete mariadb role, renamed SSL to TLS. (45192d2) [JustAddRobots]
- ISSUE-003: Added nginx TLS hostname update. (9cb7d39) [JustAddRobots]
- ISSUE-003: Fixed nginx role with python_interpreter. (d8df935) [JustAddRobots]
- ISSUE-003: Added docker role. (ed52c1f) [JustAddRobots]
- ISSUE-003: Added nginx install and config with TLS. (3021e90) [JustAddRobots]
- ISSUE-007: Updated usage() for MacOS getopt. (9ccd1d3) [JustAddRobots]

0.2.1 (2021-01-12)
------------------
- Stage: Added pystache check. (3dfb4b4) [JustAddRobots]
- Stage: Updated usage for pystache. (0ef8a7e) [JustAddRobots]

0.2.0 (2021-01-12)
------------------
- Stage: Fixed ARGS for Darwin getopt. (38158a8) [JustAddRobots]
- Stage: Changed shebang for env bash. (53f7ec0) [JustAddRobots]
- Stage: Added versioning bits. (732458b) [JustAddRobots]
- ISSUE-004: Added bump2version bits. (34c00a7) [JustAddRobots]
- ISSUE-001: Added python2/3 ansible workarounds. (47ce163) [JustAddRobots]
- ISSUE-001: Added openssl role, switched to centos-7.9 (missing libselinux) (cb66736) [JustAddRobots]
- ISSUE-001: Added vmx_data_post for bridged network. (c1ee1fd) [JustAddRobots]
- ISSUE-001: Added more bits for basic VM provisioning. (f2ba93c) [JustAddRobots]
- ISSUE-001: Added shutdown role. (0c2a4bf) [JustAddRobots]
- ISSUE-001: Added ansible, packer bits for vmware fusion. (ed4cd42) [JustAddRobots]
- ISSUE-001: Added JSON and kickstart. (1c860b6) [JustAddRobots]
- Initial commit. (71e9ab3) [JustAddRobots]
