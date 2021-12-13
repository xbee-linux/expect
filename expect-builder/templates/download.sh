#!/bin/bash
set -e

#expect
cacheDir="/root/.xbee/cache/prdownloads.sourceforge.net/expect"
artefactPath="${cacheDir}/expect{{ .pack.version }}.tar.gz"
mkdir -p "${cacheDir}"
if [ ! -f "${artefactPath}" ]; then
	wget https://prdownloads.sourceforge.net/expect/expect{{ .pack.version }}.tar.gz -O "$artefactPath"
fi
#chown -R {{ .pack.xbeeUser }}:{{ .pack.xbeeGroup }}
tar xf "${artefactPath}" -C /usr/src

