# s2reader
Simple python module to read Sentinel 2 metadata from SAFE.

## Example

Create SentinelDataSet object and provide path to the unzipped Sentinel data set:

```python
dataset = SentinelDataSet("<sentinel/folder.SAFE>")
```

Read timestamp:
```python
print dataset.generation_time
```
Result:
```
2015-08-18T10:15:16.000523Z
```
Read footprint:
```python
print dataset.footprint
```
Result:
```
POLYGON ((12.27979756199563 48.72143477590541, 12.32937194517903 47.77767728400375, 12.37649438931929 46.83562569012028, 13.75172281481429 46.85850775796889, 15.12805716115114 46.86562824777826, 15.13036057284293 47.80867846952006, 15.13278403233897 48.75347626852759, 13.77218394564506 48.74622612170926, 13.77216532146613 48.74701138908477, 13.70566314984072 48.74587165639592, 13.63916223052911 48.74551729699724, 13.63918286472035 48.74473229880407, 12.27979756199563 48.72143477590541))
```
