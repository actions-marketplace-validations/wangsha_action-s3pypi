# action-s3pypi
Github Action for https://github.com/gorilla-co/s3pypi
```yml
jobs:
  release-to-s3:
    runs-on: ubuntu-latest
    name: Release python package to s3
    steps:
      - name: Release python package to s3
        uses: wangsha/action-s3pypi@main
        with:
          fail_on_error: "false"
          args: "--bucket pypi.mydomain.com --private --no-wheel"
        
 ```
