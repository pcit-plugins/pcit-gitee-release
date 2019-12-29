# PCIT Gitee Releases plugin

```yaml
pipeline:
  deploy:
    image: pcit/gitee_releases
    when:
      status: success
      event: tag
    settings:
      token: ${GITHUB_TOKEN}
      # repo: pcit-ce/pcit
      files:
      - file_name
      # overwrite: true
      # draft: true
      # prerelease: true
      # target_commitish: refs/tags/nightly
      # note: note
      # title: title
```
