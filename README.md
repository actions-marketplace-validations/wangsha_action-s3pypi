# action-s3pypi
Github Action for https://github.com/gorilla-co/s3pypi
```yml
jobs:
  release-to-s3:
    runs-on: ubuntu-latest
    name: Release to S3
    steps:
      - name: Release to S3
        uses: wangsha/action-s3pypi@main
 ```
