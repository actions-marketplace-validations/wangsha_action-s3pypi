#!/bin/bash

export SETUPTOOLS_USE_DISTUTILS=stdlib
echo "fail on error: ${INPUT_FAIL_ON_ERROR}"
echo "[action-pipenv-setup] pipenv-setup ${INPUT_ARGS}"
exit_val="0"
output="$(pipenv-setup ${INPUT_ARGS} 2>&1)" || exit_val="$?"

echo "::set-output name=output::$output"

# Throw error if an error occurred and fail_on_error is true
if [[ "${INPUT_FAIL_ON_ERROR}" = 'true' && "${exit_val}" -eq "1" ]]; then
  exit 1
fi