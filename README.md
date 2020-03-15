# PCIT plugin -- Gitee Release

```yaml
steps:
  deploy:
    image: pcit/gitee-release
    when:
      status: success
      event: tag
    settings:
      token: ${GITEE_TOKEN}
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
