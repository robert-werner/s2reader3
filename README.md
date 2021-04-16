# s2reader3

[![PyPI version](https://badge.fury.io/py/s2reader3.svg)](https://badge.fury.io/py/s2reader3) [![Build Status](https://travis-ci.org/robert-werner/s2reader3.svg?branch=master)](https://travis-ci.org/robert-werner/s2reader3) [![Coverage Status](https://coveralls.io/repos/github/robert-werner/s2reader3/badge.svg?branch=master)](https://coveralls.io/github/robert-werner/s2reader3?branch=master) [![Code Health](https://landscape.io/github/ungarj/s2reader/master/landscape.svg?style=flat)](https://landscape.io/github/robert-werner/s2reader3/master)

Simple Python **3** module to read Sentinel 2 metadata from SAFE. In its current version, it is designed to work with Level 1C data **and** Level 2A data.

Derived from old and unsupported Python 2 (https://github.com/ungarj/s2reader)

To get more information on the data format, please be refered to the official
Sentinel 2 [Product Specification](https://www.google.at/url?sa=t&rct=j&q=&esrc=s&source=web&cd=2&cad=rja&uact=8&sqi=2&ved=0CCQQFjABahUKEwjB_5i834rIAhWDwxQKHRtVDdI&url=https%3A%2F%2Fsentinel.esa.int%2Fdocuments%2F247904%2F349490%2FS2_MSI_Product_Specification.pdf&usg=AFQjCNEI-gxDbhIpFaDPXq1e1NEZNRHoSQ&sig2=aUy9lsNqJlgCF3PLrA1vbQ&bvm=bv.103073922,d.bGQ). A brief introduction on the most important termes can be found in the [documentation](doc/s2_product_spec.md) as well.

## Example

```python
import s2reader3

with s2reader3.open("example.SAFE") as s2_product:
    # returns product start time
    print(s2_product.product_start_time)
    # returns product stop time
    print(s2_product.product_stop_time)
    # returns product generation time
    print(s2_product.generation_time)
    # returns product footprint
    print(s2_product.footprint)
    # iterates through product granules
    for granule in s2_product.granules:
        # returns granule path
        print(granule.granule_path)
        # returns granule footprint
        print(granule.footprint)

    # returns list of image paths of a specific band (e.g. all .jp2 files for
    # band 1)
    print(s2_product.granule_paths(1))
```
