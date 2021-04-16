# build-scripts/upload-project.sh
#!/usr/bin/env bash

set -e

PYPI_CONFIG="${HOME}/.pypirc"
pip install --upgrade pip
pip install twine
echo $'[distutils]\nindex-servers = pypi\n[pypi]' > $PYPI_CONFIG
echo $PYPI_USERNAME
echo $PYPI_PASSWORD
echo "username=$PYPI_USERNAME" >> $PYPI_CONFIG
echo "password=$PYPI_PASSWORD" >> $PYPI_CONFIG

twine upload --repository-url https://upload.pypi.org/legacy/ -u $PYPI_USERNAME -p $PYPI_PASSWORD --verbose dist/*