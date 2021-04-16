#########
Changelog
#########

---
0.6.3
---

* Add L2A band ids to list of available channels
* Add wvp_path method
* Fix behavior of granule_path to return best resolution products

---
0.6.1 (0.6.2)
---

* Change README.md
* Change import name to s2reader3

---
0.6
---
* convert scripts from py2 to py3
* add reading of Level 2A products

---
0.5
---
* raise warning instead of exception if expected image path is not available

---
0.4
---
* added footprint bounds to ``s2_inspect`` output
* added custom exception ``S2ReaderIOError`` if a file cannot be found
* added custom exception ``S2ReaderMetadataError`` if an unexpected metadata structure is detected
* fixed returned band paths & added flags for absolute or relative paths
