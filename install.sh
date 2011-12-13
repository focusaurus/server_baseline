#!/bin/sh
cd "$(dirname ${0})"
DIR="$(pwd)"
link() {
    FILE_PATH="${1}"
    LINK_PATH="${2}"
    ln -nsf "${FILE_PATH}" "${LINK_PATH}"
}

for FILE in $(find "./os_files" -type f | cut -d / -f 3-); do
    link "${DIR}/os_files/${FILE}" "/${FILE}"
done
