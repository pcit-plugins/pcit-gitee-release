export DRONE_BUILD_EVENT=tag

export INPUT_REPO=${INPUT_REPO:-${PCIT_REPO_SLUG}}
export DRONE_REPO_OWNER=$(echo $INPUT_REPO | cut -d "/" -f 1)
export DRONE_REPO_NAME=$(echo $INPUT_REPO | cut -d "/" -f 2)
export DRONE_COMMIT_REF=${INPUT_TARGET_COMMITISH:-${PCIT_COMMIT}}
export PLUGIN_API_KEY=${INPUT_TOKEN:-${INPUT_API_KEY}}
export PLUGIN_FILES=${INPUT_FILES}
export PLUGIN_OVERWRITE=${INPUT_OVERWRITE:-false}
export PLUGIN_DRAFT=${INPUT_DRAFT:-true}
export PLUGIN_PRERELEASE=${INPUT_PRERELEASE:-true}
export PLUGIN_NOTE=${INPUT_NOTE:-''}
export PLUGIN_TITLE=${INPUT_TITLE:-''}

export PLUGIN_BASE_URL=https://gitee.com/api/v5/

exec /bin/drone-github-release
